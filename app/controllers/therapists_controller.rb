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
    @therapist = Therapist.find(params[:id])

    if @therapist.update(therapists_params)
      render :update
    else
      json_response({ message: @therapist.errors.messages }, 422)
    end
  end

  def create
    @therapist = Therapist.new(therapists_params)

    if @therapist.save
      render :create
    else
      json_response({ message: @therapist.errors.messages }, 422)
    end
  end

  def destroy
    @therapist = Therapist.find(params[:id])
    @therapist.destroy
    if @therapist.destroy
      render :destroy
    else
      json_response({ message: @therapist.errors.messages }, 422)
    end
  end

  private

  def therapists_params
    params.permit(
      :full_name,
      :email,
      :fee,
      :description,
      :therapy_description,
      :professional_description,
      :therapist_age,
      :years_experience,
      :therapist_gender,
      :personality_traits
    )
  end
end
