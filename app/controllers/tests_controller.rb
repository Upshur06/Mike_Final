class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    test = Test.new(test_params)
    test.teacher_id = current_teacher.id
    if test.save
    redirect_to "/welcome/index"
    flash[:success] = "test has been created"
    else
    render "/tests/new"
    flash[:notice] = "try again"
    end
  end

  def show
    @test = Test.find(params[:id])
  end

  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])
    if @test.save
      redirect_to
    else
      render test_edit_path
    end
  end

  def destroy
  test = Test.find(params[:id])
  test.destroy
  redirect_to "/welcome/index"
  end

  private

  def test_params
    params.require(:test).permit(:subject, :grade_level, :teacher_name, :teacher_id,
      :question, :answer1, :answer2, :answer3, :answer4, :correct_answer)
  end

  end
