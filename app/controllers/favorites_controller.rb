class FavoritesController < ApplicationController
  
  def create
    @favorite = Favorite.new
  end

  def destroy
  end
  
  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :therapist_id)
  end
end