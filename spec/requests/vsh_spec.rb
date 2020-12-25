require 'rails_helper'

RSpec.describe "Vhs", type: :request do
  describe 'GET /api/v1/vhs' do
    it 'returns all vhs' do
      FactoryBot.create_list(:random_vhs, 3)
      get '/api/v1/vhs'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
  describe 'POST /api/v1/vhs' do
    let(:movie) { FactoryBot.create(:random_movie) }
    it 'creates a new vhs' do
      post '/api/v1/vhs', params: { serial_number: 2303254, movie_id: movie.id }
      expect(response).to have_http_status(:created)
    end
  end
  describe 'POST /api/v1/genres' do
    it 'returns an unprocessable entity status' do
      post '/api/v1/vhs', params: { serial_number: '', movie_id: '' }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
  describe 'DELETE /api/v1/vhs' do
    let(:vhs) { FactoryBot.create(:random_vhs) }
    it 'returns no content status' do
      delete "/api/v1/vhs/#{vhs.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
