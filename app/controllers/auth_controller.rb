require 'jwt'

class AuthController < ApplicationController
    def create 
        user = User.find_by(username: login_user_params[:username])
        # debugger
        if user && user.authenticate(login_user_params[:password])
            token = JWT.encode({id: user.id}, 'SECRET')
            # debugger
            render json: {user: user, jwt: token}
        else 
            render json: errors.full_messages, status: 400
        end 
    end 

    def show 
        # debugger
        string = request.authorization
        token = JWT.decode(string, 'SECRET')[0]
        id = token["id"].to_i
        @user = User.find(id)
        # debugger
        if @user 
            render json: {user: @user}
        else 
            render json: {error: ''}, status: 422
        end 
    end 

    private 

    def login_user_params
        params.require(:user).permit(:username, :password)
    end 

end
