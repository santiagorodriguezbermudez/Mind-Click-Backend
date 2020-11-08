class FavoritesController < ApplicationController
  
  def index
    @user = User.find(params[:user_id])
    @therapists = @user.favorites.joins(:therapist).pluck(
      :id,
      :therapist_id,
      'therapists.full_name',
      'therapists.fee',
      'therapists.description',
      'therapists.years_experience'
    )
    @therapists = @therapists.map do |therapist|
      {
        favorite_id: therapist[0],
        id: therapist[1],
        full_name: therapist[2],
        fee: therapist[3],
        description: therapist[4],
        years_experience: therapist[5],
      }
    end
    render :index
  end
  
  def create
    @favorite = Favorite.new(favorite_params)
  
    if @favorite.save
      @therapist = Therapist.find(@favorite.therapist_id)
      @user = User.find(@favorite.user_id)
      response = { message: 'Favorite added succesfully'}
      json_response(response)
    else
      json_response({ message: @favorite.errors.messages }, 422)
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      response = { message: 'Favorite removed succesfully'}
      json_response(response)
    else
      json_response({ message: @favorite.errors.messages }, 422)
    end
  end
  
  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :therapist_id)
  end
end