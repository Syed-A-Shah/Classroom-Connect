class HomeworkController < ApplicationController
  def index
    @homeworks = Homework.all
  end

  def new
      @homeworks = Homework.new
  end

  def create
    @homeworks = Homework.create(post_params)
    redirect_to homework_path
  end

private
  def post_params
    params.require(:homework).permit(:document, :caption)
  end
end
