# Ajax_mailer  
  
--> sur la base du repo suivant <a href="https://github.com/mathieubrunpicard/todolist-app">Mathieu brunpicard</a>  
###  Ce travail à été réalisé en peer-coding entre @LisaLou et 

## appli heroku : https://jqueryproject.herokuapp.com/  
  
## ou consulter en Localhost en suivant ce process :  
*1* `cloner ce repo`  
*2* `bundle install`  
*3* `rails db:create`  
*4* `rails db:migrate`  
*5* `rails db:seed`  
*6* `rails server`  
*7* `lancer localhost dans votre navigateur`  
  
## Inserer Ajax dans un projet rails/  
```
Pour ce projet, nous allons te demander de faire un Email Viewer, 
c'est à dire implémenter une page dans laquelle il y aura 2 colonnes :
    une colonne avec la liste des emails
    une colonne qui affiche le contenu de l'email sur lequel tu viens de cliquer
```  
**Etape 1/**  
```
Nous allons te demander de continuer ceci dans l'app to do list des derniers jours. 
Ensuite, créer un model email, avec comme attribut object, 
et body (on ne va pas trop se prendre la tête sur le back, le but est de te faire jouer avec AJAX après tout 😇). 
Mets dans ta base quelques emails.
```  
--> ```rails g model email body object```  
--> ```
invoke  active_record
      create    db/migrate/20181122103720_create_emails.rb
      create    app/models/email.rb
      invoke    test_unit
      create      test/models/email_test.rb
      create      test/fixtures/emails.yml

```  
--> insertion de quelques emails en console pour le test.  
```
Email.create(object: "au sujet du dernier message", body: "nous avons le plaisir de vous envoyer un email inutil")```  
  
**Etape 2/**  
```
Root ton projet à email#index, et commence à faire ton controller et ta view.
```  

--> Dans le fichier routes, j'ai remplacé ```root to: "home#index"``` par ```root to: "email#index"```.  
  
--> Pour le controller
```rails g controller email```  
--> Methode index, create, delete.
--> Dans la méthode `index`, instanciation d'un objet `Email` pour afficher tout les objects.  
--> Création de la View `index.html.erb` qui affiche en ruby tout les objets.  
  
**Etape 3/**  
```
La colonne contenu devra ne rien afficher au loading de la page. Quand on clique sur un email dans la colonne liste, la colonne contenu devra afficher :
    L'objet de l'email, en gros
    Le corps de l'email, en taille normale
    un lien pour supprimer l'email
La suppression d'email sera faite elle aussi avec de l'AJAX.
```  
--> création dans la views d'une autre div qui sera vide au premier chargement de la page.  
```  
<h1>Ceci est la page index avec la liste des emails</h1>
<br>
<div class="container">
    <div class = "email__object">
        <% @emails.each do |e|%>
        <p><%= e.object %></p>
        <%end%>
    </div>
    <div class="email__body">
        <h4>L'objet de l'email, en gros</h4>
            <div></div>
        <h4>Le corps de l'email, en taille normale</h4>
            <div></div>
        <h4>un lien pour supprimer l'email</h4>
            <div></div>
    </div>
</div>
```  
--> Chaque objet doit etre un lien clickable qui dirige vers une methode create par exemple en prenant son ID comme paramètre pour qu'on puisse retrouver le contenu correspondant dans la BDD.   
AHAHAHAH how the fuck should i do this ?  

--> Bon alors déja je tente de mettre des ```link_to``` et ```remote : to``` un peu partout autour de mes itérations de ```e.object``` + Je combine ca avec une méthode create de ce gout là:  
```
def create 
        puts "CONNECT METHODE CREATE OK !!"
        @email = Email.find_by(params[:id])
        puts "#####################################"
        puts @email.object
        puts "#####################################"
        respond_to do |format|
            puts "ceci est le format :  #{format}"
            format.html { redirect_to show_path }
            format.js   ## cela va rendre create.js.erb
         end
    end
```   
--> Evidement CA MARCHE PAS:  
<img src="/screen_shot/error1.png"/>
--> Effectivement le path create n'existe pas dans mon fichier route :  
```
Rails.application.routes.draw do
  devise_for :users
  # root ton projet a email#index
  root to: "email#index"
  get 'create/:id', to:'email#create'
  get 'show', to:'email#show'
  # -----------------------------
  resources :tasks, except: [:show]
end
```  
--> Sauf que quand je mets ca dans index ```<%= link_to e.object, create(:id)_path, remote: true %>```, ben ca marche pas non plus :(  
<img src="/screen_shot/error2.png">
--> FINALEMENT je mets dans l'index ```<%= link_to e.object, show_path(e), remote: true %>``` et   
dans mon fichier route ```get '/show/:id', to:'email#show', as: 'show'```  
--> ma méthode create devient une methode show avec :  
```
def show 
        puts "CONNECT METHODE SHOW !!!"
        @email = Email.find(params[:id])
        puts "#####################################"
        puts @email.object
        puts "#####################################"
        respond_to do |format|
            puts "ceci est le format :  #{format}"
            format.html { redirect_to show_path }
            format.js   
         end
    end
```  
--> CA MARCHE ok maintenant le script en JS dans show.js.erb donne:  
```
$(document).ready(function() {
   $('.object').text("<< <%=j @email.object %> >>");
   $('.body').text("<< <%=j @email.body %> >>");
});
```  
--> Et OK j'ai bien le contenu qui change quand je click sur un autre email.  
--> Création d'une methode destroy dans le controller email:  
```
def destroy 
        @email = Email.find(params[:id])
        @email.destroy
        respond_to do |format|
            puts "l'email a été supprimé !!!"
            format.html { redirect_to show_path }
            format.js   
         end
    end
```  
--> Créa du script associé dans une views destroy.js.erb:  
```
$('.object').hide(' <%=j @email.object %>');
$('.body').hide('<%=j @email.body %>');
$('.<%=@email.id%>').hide();
```  
--> Et la routes : ```delete '/delete/:id', to:'email#destroy', as: 'delete'```  
--> Ca marche ok !  

**Etape X/**  
```
Fais un petit seeds.rb pour la production, comme ça les gens qui iront sur ton app verront les emails 😉
```  
--> Le seed lance une créa d'emails en DB (10).



