require 'rails_helper'

RSpec.describe 'Favorites API', type: :request do
  # initialize test data
  let(:user) { create(:user) }
  let(:user_id) { user.id }
  let!(:therapists) { create_list(:therapist, 10) }
  let(:therapist_id) { therapists.first.id }
  let(:last_therapist) { therapists.last }

  # Authorize Request
  let(:headers) { valid_headers }

  # Add all of the therapist as favorites
  before do
    user.therapists << therapists[0...9]
  end

  # Test suite for /favorites
  describe 'GET /favorites' do
    # make HHTP get request before each example
    before { get "/api/users/#{user_id}/favorites", params: {}, headers: headers }

    it 'returns the favorite therapists' do
      expect(json).not_to be_empty
      expect(json['data']['therapists'].size).to eql(9)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for POST /favorites
  describe 'POST /favorites' do
    # valid data as a payload
    let(:valid_attributes) do
      { user_id: user_id, therapist_id: last_therapist.id }.to_json
    end

    context 'when the request is a valid therapist' do
      before { post "/api/users/#{user_id}/favorites", params: valid_attributes, headers: headers }

      it 'add the therapist as a favorite' do
        expect(json['message']).to eql('Favorite added succesfully')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(200)
      end
    end

    context 'the request is not valid' do
      before { post "/api/users/#{user_id}/favorites", params: { user_id: user_id }.to_json, headers: headers }

      it 'returns status code of 422' do
        expect(response).to have_http_status(422)
      end
    end
  end

  # Test suite for DELETE /therapists/:id
  describe 'DELETE /users/:user_id/favorites/:id' do
    let(:first_favorite_id) { user.favorites.first.id }
    before { delete "/api/users/#{user_id}/favorites/#{first_favorite_id}", params: {}, headers: headers }

    it 'returns status code 204' do
      expect(response).to have_http_status(200)
    end
  end
end
