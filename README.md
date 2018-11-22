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
```Email.create(object: "au sujet du dernier message", body: "nous avons le plaisir de vous envoyer un email inutil")```  
  

