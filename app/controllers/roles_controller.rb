class RolesController < ApplicationController
    before_action :set_role, only: [:show, :update, :destroy]

    def index 
        @roles = Role.all 
        render json: @roles
    end 

    def show 
        render json: @role
    end 

    def create
        @role = Role.create(role_params)
        
        if @role.valid?
            render json: @role 
        else 
            render json: @role.errors.full_messages 
        end 
    end 

    def update 
        if @role.update(role_params)
            render json: @role 
        else
            render json: @role.errors.full_messages 
        end 
    end 

    def delete 
        @role.destroy
    end 

    private 

    def set_role 
        @role = Role.find(params[:id])
    end 

    def role_params
        params.require(:role).permit(:title, :project_id)
    end 
end
