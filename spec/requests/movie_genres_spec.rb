require 'rails_helper'

RSpec.describe 'movie genres', type: :request do
  describe 'GET /api/v1/movie_genres' do
    it 'returns all movie genres' do
      FactoryBot.create_list(:random_movie_genre, 3)
      get '/api/v1/movie_genres'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
  describe 'POST /api/v1/movie_genres' do
    let(:movie) { FactoryBot.create(:random_movie) }
    let(:genre) { FactoryBot.create(:random_genre) }
    it 'creates a new movie_genre' do
      post '/api/v1/movie_genres', params: { movie_id: movie.id, genre_id: genre.id }
      expect(response).to have_http_status(:created)
    end
  end
  describe 'POST /api/v1/genres' do
    let(:movie) { FactoryBot.create(:random_movie) }
    let(:genre) { FactoryBot.create(:random_genre) }
    it 'returns an unprocessable entity status' do
      post '/api/v1/movie_genres', params: { movie_id: movie.id, genre_id: '' }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
  describe 'DELETE /api/v1/movie_genres' do
    let(:movie_genre) { FactoryBot.create(:random_movie_genre) }
    it 'returns no content status' do
      delete "/api/v1/movie_genres/#{movie_genre.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
