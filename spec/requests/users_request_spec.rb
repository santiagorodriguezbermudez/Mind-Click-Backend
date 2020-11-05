require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /api/users' do
    it 'Get all Users from index' do
      get users_path
      expect(response).to have_http_status(:success)
    end

    it 'Returns an array of users' do
      get('/api/users/')
      json = JSON.parse(response.body)
      puts json
      expect(json['data']['users']).to contain_exactly()
    end
  end
end
