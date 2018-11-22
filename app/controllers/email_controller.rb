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
=begin from TUTO
    def create
        @task = Task.create!(allowed_params)
      
        respond_to do |f|
          f.html { redirect_to tasks_url }
          f.js
        end
    end      
=end

    def delete 

    end
end
