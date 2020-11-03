class TherapistsController < ApplicationController
  
  def index
  end

  def show
  end

  def update
  end

  def create
  end

  def destroy
  end

  private 

  def therapists_params
    params.require(:therapist).permit(
      :id,
      :full_name,
      :email,
      :fee,
      :description,
      :therapy_description,
      :professional_description,
      :therapist_age,
      :years_experience,
      :therapist_gender,
      :personality_traits,
      )
  end
  
end