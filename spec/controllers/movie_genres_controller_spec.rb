require 'rails_helper'

RSpec.describe Api::V1::MovieGenresController, type: :controller do
  describe 'POST #create' do
    it 'creates a new movie genre' do
      params = { movie_id: 1, genre_id: 1 }
      should permit(:movie_id, :genre_id).for(:create, params: params)
    end
  end
  describe 'POST #create' do
    it 'does not create a new movie genre' do
      params = { movie_id: 1, genre_id: 1, country: 'norway' }
      should_not permit(:country).for(:create, params: params)
    end
  end
  describe 'GET #show' do
    it { should use_before_action(:set_movie_genre) }
  end
  describe 'DELETE #destroy' do
    it { should use_before_action(:set_movie_genre) }
  end
end