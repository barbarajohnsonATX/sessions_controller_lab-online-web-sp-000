class SessionsController < ApplicationController
    def new
    end
 
    def create
        if params[:name].blank
          redirect_to '/login'
        end 
        session[:name] = params[:name]
        redirect_to '/'
    end
    
end
