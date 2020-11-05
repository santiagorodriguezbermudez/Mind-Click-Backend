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
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
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

  def user_params
    params.permit(
      :full_name,
      :email,
      :password,
      :password_confirmation
      )
  end
end