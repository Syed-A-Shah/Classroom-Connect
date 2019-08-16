class RegistrationsController < Devise::RegistrationsController

  private

  def after_sign_up_path_for(_resource)
     '/homeworks'
   end

  # def sign_up_params
  #   params.require(:user).permit(:email, :password, :password_confirmation)
  # end
end
