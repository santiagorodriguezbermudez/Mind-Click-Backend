require 'rails_helper'

RSpec.describe 'Therapist', type: :request do
  describe 'GET /api/therapists' do
    it 'Get all Therapists from index' do
      get therapists_path
      expect(response).to have_http_status(:success)
    end
  end
end
