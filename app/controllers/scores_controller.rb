class ScoresController < ApplicationController
  def index
    @scores = Score.all
  end

  def new
    @score = Score.new
  end

  def create
    @score = Score.create(score_params)
    render json: @score
  end

  private

  def score_params
    params.require(:score).permit(:name)
  end
end
