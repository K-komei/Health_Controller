class UserController < ApplicationController
    def Create
    end


    def login
        @user = User.find_by(username: params[:username])
        if @user
            redirect_to("/home/Main")
            flash[:notice] = "Login Success"
        else
            redirect_to("/")
            flash[:notice] = "Login Failure"
        end
    end

    def Adduser
        @user = User.new(username: params[:username] ,password: params[:password])
        if @user.save
            redirect_to("/home/Main")
            flash[:notice] = "Create Success"
        else
            redirect_to("/create")
            flash[:notice] = "Create Failure"
        end
    end

    


    def logout
    end



end
