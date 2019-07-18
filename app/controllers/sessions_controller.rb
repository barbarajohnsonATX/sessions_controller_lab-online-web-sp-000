class SessionsController < ApplicationController
    def new
    end
 
    def create
        if params[:name].empty?
          redirect_to '/login'
        end 
        session[:name] = params[:name]
        redirect_to '/'
    end
    
end
