class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index 
        @users = User.all 
        render json: @users
    end 

    def show 
        user = UserSerializer.new(@user).serializable_hash
        render json: user
    end 

    def create
        # debugger
        @user = User.create(user_params)
        # debugger
        if @user.valid?
            token = JWT.encode({id: @user.id}, 'SECRET')
            user = UserSerializer.new(@user).serializable_hash
            render json: {user: user, jwt: token}
        else 
            render json: { error: 'WRONG'}, status: 422
        end 
    end 

    def update 
        if @user.update(user_params)
            # debugger
            render json: @user 
        else
            render json: @user.errors.full_messages 
        end 
    end 

    def delete 
        @user.destroy
    end 

    private 

    def set_user 
        @user = User.find(params[:id])
    end 

    def user_params
        params.require(:user).permit(:name, :username, :password, :bio, :public, :img, :facebook, :twitter, :linkedin, :interests)
    end 


end
