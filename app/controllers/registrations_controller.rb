# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = @user.generate_jwt
      render json: { user: @user, token: token }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
