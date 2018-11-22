class EmailController < ApplicationController
    def index 
        @emails = Email.all
        return @emails
    end

    def create 
        
    end

    def delete 

    end
end
