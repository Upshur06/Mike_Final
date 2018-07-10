class ScoresController < ApplicationController
  def index
      @scores = Score.all

  end

  def show
      @score = Score.find(params[:id])
  end

  def guess
    puts 'this is the test id'
    puts params[:test_id]
  s = Score.new(score_params)
  if(params[:answer] == params[:correct_answer])
    s.result = "Answer: Correct"
  else
    s.result = 'Answer: Incorrect'
  end
  s.test_id = params[:test_id]
  s.student_id = current_student.id
  if s.save
    redirect_to "/scores"
  else
    render test_path(params[:test_id])
  end
end

  private

  def score_params
    params.permit(:result, :student_id, :test_id)
  end
end
