class HomeworkController < ApplicationController
  def index
      @homework = Homework.all
  end

  def new
      @homework = Homework.new
  end

  def create
      @homework = Homework.create(post_params)
      redirect_to homework_path
  end

  private
  def post_params
      params.require(:homework).permit(:document, :caption)
  end
end
