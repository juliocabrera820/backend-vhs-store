require 'rails_helper'

RSpec.describe "rentals", type: :request do
  describe 'GET /api/v1/rentals' do
    it 'returns all rentals' do
      FactoryBot.create_list(:random_rental, 3)
      get '/api/v1/rentals'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
  describe 'POST /api/v1/rentals' do
    let(:vhs) { FactoryBot.create(:random_vhs) }
    let(:client) { FactoryBot.create(:random_client) }
    it 'creates a new rental' do
      post '/api/v1/rentals', params: { client_id: client.id, vhs_id: vhs.id }
      expect(response).to have_http_status(:created)
    end
  end
  describe 'POST /api/v1/rentals' do
    let(:vhs) { FactoryBot.create(:random_vhs) }
    let(:client) { FactoryBot.create(:random_client) }
    it 'returns an unprocessable entity status' do
      post '/api/v1/rentals', params: { client_id: client.id, vhs_id: 'lsls' }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
  describe 'DELETE /api/v1/rentals/:rental_id' do
    let(:rental) { FactoryBot.create(:random_rental) }
    it 'returns no content status' do
      delete "/api/v1/rentals/#{rental.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
