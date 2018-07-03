class TestController < ApplicationController
  def index
  end

  def new
    if current_teacher
      @test = Test.new
    else
      redirect_to "/"
    end
end


  def show
  end

  def edit
  end
end
