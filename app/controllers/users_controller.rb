class UsersController < ApplicationController
  def show
    head :not_found unless user
    render json: user if user
  end

  def create
    new_user = User.new(user_params)
    if new_user.save
      head :created, id: new_user.id
    else
      head :bad_request
    end
  end

  def destroy
    if user.destroy
      head :ok
    else
      head :bad_request
    end
  end

  def update
    if user.update_attributes(user_params)
      render json: user
    else
      head :bad_request
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :email)
  end

  def user
    @user ||= User.find(params[:id])
  end
end
