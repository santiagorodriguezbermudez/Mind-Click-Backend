class UsersController < ApplicationController
  
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def create
  end

  def destroy
  end
  
  private

  def user_params
    params.require(:user).permit(:full_name, :email)
  end
end