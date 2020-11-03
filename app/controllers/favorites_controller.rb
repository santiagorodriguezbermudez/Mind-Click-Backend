class FavoritesController < ApplicationController
  
  def create
    @favorite = Favorite.new(favorite_params)
  
    if @favorite.save
      @therapist = Therapist.find(favorite.therapist_id)
      @user = User.find(favorite.user_id)
      render :create
    else
      head(:error)
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      render :destroy
    else
      head(:error)
    end
  end
  
  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :therapist_id)
  end
end