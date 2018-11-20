# Jquery_project
--> sur la base du repo suivant <a href="https://github.com/mathieubrunpicard/todolist-app">Mathieu brunpicard</a>  
  
###  Ce travail à été réalisé en peer-coding entre @LisaLou et @Javi  
  
## tab/  
```Dans cette première partie du projet, tu faire un système de tabulation sur la page d'accueil. Il y a actuellement 3 listes, avec 3 items. Tu vas donc devoir créer une tab où chaque liste correspondra à un onglet, et lors du clic sur cet onglet, les éléments de cette liste seront affichés. Il sera possible de changer d'onglets en changeant sur le nom de chaque liste.```  
*  add ```gem 'jquery-rails'``` au Gemfile puis ```bundle install```  
*  add ```//= require jquery3
//= require popper
//= require bootstrap-sprockets```  dans application.js  
Pourquoi le `//=` ?  
*  une erreur apparait sur le navigateur résolu en ajoutant ``` '~> 4.3.3'``` a la gem jquery dans le Gemfile.  
*  add script pour la tab dans application.js avec les selecteurs html  
  * Tout le code est contenu dans une méthode `.ready`
  
## modals/  
*  add script pour les modals de signIn , signUp qui s'affiche en milieu de page au click dans le dropdown.  
  
## Carrousel/  

*  add script carrousel + css pour centrer l'image courante /  