require 'rails_helper'

RSpec.describe 'Therapists API', type: :request do
  #initialize test data
  let!(:therapists) { create_list(:therapist, 10) }
  let(:therapist_id) { therapists.first.id }
  
  #Test suite for /therapists
  describe 'GET /therapists' do
    # make HHTP get request before each example
    before { get '/api/therapists' }

    it 'returns the therapists' do
      expect(json).not_to be_empty
      expect(json['data']['therapists'].size).to eql(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  #Test suite for GET /therapists/:id
  describe 'GET /therapists/:id' do
    before { get "/api/therapists/#{therapist_id}"}

    context 'when the record exists' do
      it 'returns the therapist' do
        expect(json).not_to be_empty
        expect(json['data']['therapist']['id']).to eql(therapist_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:therapist_id) { 100 }

      it 'returns the status code 404' do
        expect(response).to have_http_status(404)
      end
    end
  end

  #Test suite for POST /therapists
  describe 'POST /therapists' do
    #valid data as a payload
    let(:valid_attributes) { { full_name: 'Test User', email: 'test@user.com' } }

    context 'when the request is a valid therapist' do
      before { post '/api/therapists', params: valid_attributes}

      it 'creates a therapist' do
        expect(json['data']['therapist']['full_name']).to eql('Test User')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(200)
      end
    end

    context 'the request is not valid' do
      before { post '/api/therapists', params: { full_name: 'test' } }

      it 'returns status code of 422' do
        expect(response).to have_http_status(422)
      end
    end
  end

  # Test suite for PUT /therapists/:id
  describe 'PUT /therapists/:id' do
    let(:valid_attributes) { { full_name: 'New User' } }

    context 'when the record exists' do
      before { put "/api/therapists/#{therapist_id}", params: valid_attributes }

      it 'updates the record' do
        expect(json['data']['therapist']['full_name']).to eql('New User')
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(200)
      end
    end
  end

  # Test suite for DELETE /therapists/:id
  describe 'DELETE /therapists/:id' do
    before { delete "/api/therapists/#{therapist_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(200)
    end
  end
end
