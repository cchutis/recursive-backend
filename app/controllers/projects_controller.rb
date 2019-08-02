class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]

  # GET /projects
  def index
    @projects = Project.all

    render json: @projects
  end
  # GET /projects/1
  def show
    render json: @project
  end

  # POST /projects
  def create
    # byebug
    @project = Project.create(project_params)
    
    render json: @project, status: :created, location: @project
    # if @project.save
    #   render json: @project, status: :created, location: @project
    # else
    #   render json: @project.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:name, :language, :due_date, :user_id, :photo)
    end
end
