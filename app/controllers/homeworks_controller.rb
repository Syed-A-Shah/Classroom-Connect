class HomeworksController < ApplicationController
    def index
        @homeworks = Homework.all
    end
    def new
        @homework = current_user.homeworks.build
    end
    def create
        @homework = current_user.homeworks.create(post_params)
        redirect_to '/homeworks'
      end
    private

    def post_params
        params.require(:homework).permit(:hw, :caption,)
    end

end
