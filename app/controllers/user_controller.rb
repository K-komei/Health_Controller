class UserController < ApplicationController

    def login
        @user = User.find_by(username: params[:username])
        if @user
            redirect_to("/home/Main")
        else
            redirect_to("/")
        end
    end

    #def create
        #@user = User.new(params[:username] params[:password])
    #end
    


    def logout
    end

end
