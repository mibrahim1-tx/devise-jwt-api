
class SessionsController < Devise::SessionsController
  def create
    @user = User.find_by(email: params[:email])
    if @user.present? && @user.valid?
      token = @user.generate_jwt
      render json: { user: @user, token: token }
    else
      render json: { error: 'Invalid username or password' }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
