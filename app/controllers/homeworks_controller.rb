class HomeworksController < ApplicationController
  before_action :authenticate_user!

  def index
    @homeworks = Homework.all.reverse
  end

  def edit
    # if current_user.id == @homework.user_id
    #   @homework.update(post_params)
    #   redirect_to @homework, notice: 'update successful'
    # else
    #   redirect_to homeworks_path, notice: 'You cannot edit that post'
    # end
  end

  def new
    @homework = current_user.homeworks.build
  end

  def create
    @homework = current_user.homeworks.create(post_params)
    redirect_to homeworks_path
    # if @homework.save
    #   flash[:success] = "Your homework has been uploaded successfully!"
    # else
    #   flash[:alert] = "Your homework couldn't be uploaded!  Please check the form."
    #   render :new
    # end
  end

  private

  def post_params
    params.require(:homework).permit(:hw, :caption,)
  end

end
