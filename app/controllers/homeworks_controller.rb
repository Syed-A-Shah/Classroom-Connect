class HomeworksController < ApplicationController
    def index
        @homeworks = Homework.all
    end
    def new
        @homework = Homework.new
    end
    def create
        @homework = Homework.create(post_params)
        redirect_to '/homeworks'
      end
    private

    def post_params
        params.require(:homework).permit(:hw, :caption)
    end

end

