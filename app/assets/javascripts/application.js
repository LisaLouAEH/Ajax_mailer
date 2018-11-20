// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

//test de liaison entre l'app et le script:
/*$(document).ready(function() {
    $("h1").text("coucou");
});*/

// script de tabulation:
$(document).ready(function() {
    $(".modal-signup").hide();
    $(".modal-login").hide();   
    $("ul > .card").hide();
    $(".dropdown > ul").hide();
    $(".container > ul > li").css("border", "solid green 0.3px");
    $(".container > ul > li").click(function(){
        //$(".container > ul > li").css("background-color", "red");
        
        if( $(this).next().is(":hidden") ) {
            $("ul > .card").hide(200);
            $(this).next().show(200);
        }
        else{
            $("ul > .card").hide(200);
        }  
        });
// dropdown du avatar

    $(".rounded-circle").click(function() {
        if( $(this).next().is(":hidden")) {
             $(".dropdown > ul").show();
        }else {
             $(".dropdown > ul").hide();
        }
    });
    $(".dropdown > ul > li").css("list-style-type", "none");

    $(".login").click(function() {
        if( $(".modal-login").is(":hidden")) {
            $(".modal-login").show();
        }else {
             $(".modal-login").hide();
        };
    });

    $(".signup").click(function() {
        if( $(".modal-signup").is(":hidden")) {
            $(".modal-signup").show();
        }else {
             $(".modal-signup").hide();
        };    
    });
});




//$(".cat__title").find("ul")
