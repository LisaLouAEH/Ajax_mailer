class EmailController < ApplicationController
    def index 
        @emails = Email.all
        puts "CONNECT METHODE INDEX OK !!!"
        return @emails
    end

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
=begin from TUTO
    def create
        @task = Task.create!(allowed_params)
      
        respond_to do |f|
          f.html { redirect_to tasks_url }
          f.js
        end
    end      
=end
    def show 
        puts "CONNECT METHODE SHOW !!!"
    end

    def delete 

    end
end
