# Jquery_project
--> sur la base du repo suivant <a href="https://github.com/mathieubrunpicard/todolist-app">Mathieu brunpicard</a>  
## tab/  
```Dans cette première partie du projet, tu faire un système de tabulation sur la page d'accueil. Il y a actuellement 3 listes, avec 3 items. Tu vas donc devoir créer une tab où chaque liste correspondra à un onglet, et lors du clic sur cet onglet, les éléments de cette liste seront affichés. Il sera possible de changer d'onglets en changeant sur le nom de chaque liste.```  
*  add ```gem 'jquery-rails'``` au Gemfile puis ```bundle install```  
*  add ```//= require jquery3
//= require popper
//= require bootstrap-sprockets```  dans application.js  
Pourquoi le `//=` ?  
*  une erreur apparait sur le navigateur résolu en ajoutant ``` '~> 4.3.3'``` a la gem jquery dans le Gemfile.
