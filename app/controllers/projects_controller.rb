class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :update, :destroy]

    def index 
        @projects = Project.all 
        render json: @projects
    end 

    def show 
        project = ProjectSerializer.new(@project).serializable_hash
        # debugger
        render json: project
        # debugger
    end 

    def create
        @project = Project.create(project_params)
        
        if @project.valid?
            project = ProjectSerializer.new(@project).serializable_hash
            render json: project
        else 
            render json: @project.errors.full_messages 
        end 
    end 

    def update 
        if @project.update(project_params)
            render json: @project 
        else
            render json: @project.errors.full_messages 
        end 
    end 

    def delete 
        @project.destroy
    end 

    private 

    def set_project 
        @project = Project.find(params[:id])
    end 

    def project_params
        params.require(:project).permit(:title, :img, :description, :manager_id, :content, :category)
    end 
end
