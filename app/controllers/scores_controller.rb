class ScoresController < ApplicationController
  def index
      @scores = Score.all
  end

  def new
      @score = Score.new
  end

  def show
      @score = Score.find(params[:id])
  end

  private

  def test_params
    params.require(:score).permit(:result, :student_id, :test_id)
  end
end
