class ActivitiesController < ApplicationController
  before_action :get_projects, only: [:new, :edit]
  before_action :get_scores, only: [:new, :edit]

  def index
    if params[:order].present?
      filter_params(params).each do |key, val|
        @activities = Activity.public_send("filter_by_#{val}")
      end
    else
      @activities = Activity.all.order(work_day: 'DESC')
    end
  end

  def new
    @activity = Activity.new
    @projects ||= Project.all
  end

  def create
    @activity = Activity.create(activity_params)
    render json: @activity
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  private

  def filter_params(params)
    params.slice(:order)
  end
  
  def get_projects
    @projects ||= Project.all
  end

  def get_scores
    @scores ||= Score.all
  end

  def activity_params
    params.require(:activity).permit(
      :description,
      :start_time,
      :end_time,
      :work_day,
      :project_id,
      :score_id,
      :user_id)
  end
end
