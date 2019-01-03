class ApplicationsController < ApplicationController
    before_action :set_application, only: [:show, :update, :destroy]

    def index 
        @applications = Application.all 
        render json: @applications
    end 

    def show 
        application = ApplicationSerializer.new(@application).serializable_hash
        render json: application
    end 

    def create
        @application = Application.create(application_params)
        
        if @application.valid?
            render json: @application 
        else 
            render json: @application.errors.full_messages 
        end 
    end 

    def update 
        if @application.update(application_params)
            # byebug
            render json: @application 
        else
            render json: @application.errors.full_messages 
        end 
    end 

    def delete 
        @application.destroy
    end 

    private 

    def set_application 
        @application = Application.find(params[:id])
    end 

    def application_params
        params.require(:application).permit(:collaborator_id, :role_id, :approve, :reject)
    end 
end
