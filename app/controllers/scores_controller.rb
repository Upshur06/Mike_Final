class ScoresController < ApplicationController
  def index
      @scores = Score.all

  end

  def new
      @score = Score.new
  end

  def create
    score = Score.new(score_params)
    # test.teacher_id = current_teacher.id
    if score.save
    redirect_to "/scores"
    flash[:success] = "results in"
    else
    render "/scores/new"
    flash[:error] = "try again"
    end
  end

  def show
      @score = Score.find(params[:id])
  end

  private

  def score_params
    params.require(:score).permit(:result, :student_id, :test_id)
  end
end
