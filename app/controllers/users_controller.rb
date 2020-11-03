class UsersController < ApplicationController
  
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update(users_params)
      render :update
    else
      head(:error)
    end
  end

  def create
    @user = User.new(users_params)

    if @user.save
      render :create
    else
      head(:error)
    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      render :destroy
    else
      head(:error)
    end
  end

  private 

  def users_params
    params.require(:user).permit(
      :full_name,
      :email,
      )
  end
end