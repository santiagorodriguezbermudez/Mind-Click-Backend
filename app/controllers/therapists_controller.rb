class TherapistsController < ApplicationController
  
  def index
    @therapists = Therapist.all
    render :index
  end

  def show
    @therapist = Therapist.find(params[:id])
    render :show
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