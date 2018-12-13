class AuthController < ApplicationController
    def create 
        user = User.find_by(username: login_user_params[:username])
        if user && user.authenticate(login_user_params[:password])
            render json: {id: user.id, username: user.username}
        else 
            render json: { error: ''}, status: 400
        end 
    end 

    def show 
        id = request.authorization.to_i 
        @user = User.find(id)
        if @user 
            render json: {id: @user.id, username: @user.username}
        else 
            render json: {error: ''}, status: 422
        end 
    end 

    private 

    def login_user_params
        paraams.require(:user).permit(:username, :password)
    end 

end
