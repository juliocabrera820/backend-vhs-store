require 'rails_helper'

RSpec.describe 'Genres', type: :request do
  describe 'GET /api/v1/genres' do
    it 'returns all genres' do
      FactoryBot.create_list(:random_genre, 4)
      get '/api/v1/genres'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(4)
    end
  end
  describe 'POST /api/v1/genres' do
    it 'creates a new genre' do
      post '/api/v1/genres', params: { name: 'terror' }
      expect(response).to have_http_status(:created)
    end
  end
  describe 'POST /api/v1/genres' do
    it 'returns an unprocessable entity status' do
      post '/api/v1/genres', params: { name: '' }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
  describe 'DELETE /api/v1/genres' do
    let(:horror) { FactoryBot.create(:genre, name: 'Horror') }
    it 'returns no content status' do
      delete "/api/v1/genres/#{horror.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
