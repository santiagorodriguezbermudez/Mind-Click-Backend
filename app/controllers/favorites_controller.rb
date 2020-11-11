class FavoritesController < ApplicationController
  def index
    user = User.find(params[:user_id])
    therapists_db = user.favorites.joins(:therapist).pluck(
      :id, :therapist_id, 'therapists.full_name', 'therapists.fee', 'therapists.description',
      'therapists.years_experience',
      'therapists.therapy_description'
    )
    @therapists = therapists_db.map do |therapist|
      {
        favorite_id: therapist[0],
        id: therapist[1],
        full_name: therapist[2],
        fee: therapist[3],
        description: therapist[4],
        years_experience: therapist[5],
        therapy_description: therapist[6]
      }
    end
    render :index
  end

  def create
    favorite = Favorite.new(favorite_params)

    if favorite.save
      response = { message: 'Favorite added succesfully' }
      json_response(response)
    else
      json_response({ message: favorite.errors.messages }, 422)
    end
  end

  def destroy
    favorite = Favorite.find(params[:id])
    if favorite.destroy
      response = { message: 'Favorite removed succesfully' }
      json_response(response)
    else
      json_response({ message: favorite.errors.messages }, 422)
    end
  end

  private

  def favorite_params
    params.permit(:user_id, :therapist_id)
  end
end
