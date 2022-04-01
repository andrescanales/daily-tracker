class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @clients ||= Client.all
  end

  def create
    @project = Project.create(project_params)
    render json: @project
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :client_id)
  end
end
