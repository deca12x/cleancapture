class Api::V1::ProjectsController < ApplicationController
  before_action :set_projects, only: [:index]

  def index
    # render json: projects
    render json: { projects: @projects }, status: :ok
  end

  def show
    project = Project.find(params[:id])
    render json: { project: project }, status: :ok
  end

  def create
    project = Project.new(project_params)
    if project.save
      render json: { project: project }, status: :created
    else
      render json: { errors: project.errors }, status: :unprocessable_entity
    end
  end

  private

  def set_projects
    @projects = Project.all
  end
end
