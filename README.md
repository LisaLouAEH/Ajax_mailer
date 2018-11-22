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




