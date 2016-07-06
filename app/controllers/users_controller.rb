class UsersController < ApplicationController

  def show
  end

  def create
    user = User.new(user_params)
    if user.save
      head :created, id: user.id
    else
      head :bad_request
    end
  end

  def destroy
  end

  def update
  end

  private 
  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :email)
  end
end
