class EmailController < ApplicationController
    def index 
        @emails = Email.all
        puts "CONNECT METHODE INDEX OK !!!"
        return @emails
    end

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

    def destroy 
        @email = Email.find(params[:id])
        @email.destroy
        respond_to do |format|
            puts "l'email a été supprimé !!!"
            format.html { redirect_to show_path }
            format.js   
         end
    end
end
