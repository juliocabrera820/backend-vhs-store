require 'rails_helper'

RSpec.describe Api::V1::MoviesController, type: :controller do
  describe 'POST #create' do
    it 'creates a new movies' do
      params = { title: 'any', year: 2000, length: 100, description: 'idk idk', director: 'ikk' }
      should permit(:title, :year, :length, :description, :director).for(:create, params: params)
    end
  end
  describe 'POST #create' do
    it 'does not create a new movies' do
      params = { title: 'any', year: 2000, length: 100, description: 'idk idk', director: 'ikk', country: 'norway' }
      should_not permit(:country).for(:create, params: params)
    end
  end
  describe 'GET #show' do
    it { should use_before_action(:set_movie) }
  end
  describe 'DELETE #destroy' do
    it { should use_before_action(:set_movie) }
  end
end