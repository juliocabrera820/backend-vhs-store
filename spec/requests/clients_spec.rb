require 'rails_helper'

RSpec.describe "Clients", type: :request do
  describe 'GET /api/v1/clients' do
    it 'returns all clients' do
      FactoryBot.create_list(:random_client, 3)
      get '/api/v1/clients'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
  describe 'POST /api/v1/clients' do
    it 'creates a new client' do
      post '/api/v1/clients', params: { name: 'laura', home_address: 'c 55 # 668' }
      expect(response).to have_http_status(:created)
    end
  end
  describe 'POST /api/v1/genres' do
    it 'returns an unprocessable entity status' do
      post '/api/v1/clients', params: { name: 'john', home_address: '' }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
  describe 'DELETE /api/v1/clients' do
    let(:client) { FactoryBot.create(:client) }
    it 'returns no content status' do
      delete "/api/v1/clients/#{client.id}"
      expect(response).to have_http_status(:no_content)
    end
  end
end
