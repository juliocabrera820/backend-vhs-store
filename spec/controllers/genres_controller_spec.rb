require 'rails_helper'

RSpec.describe Api::V1::GenresController, type: :controller do
  describe 'POST #create' do
    it 'creates a new genre' do
      params = { name: 'horror' }
      should permit(:name).for(:create, params: params)
    end
  end
  describe 'POST #create' do
    it 'does not create a new genre' do
      params = { name: 'horror', creator: 'John' }
      should_not permit(:creator).for(:create, params: params)
    end
  end
  describe 'GET #show' do
    it { should use_before_action(:set_genre) }
  end
  describe 'DELETE #destroy' do
    it { should use_before_action(:set_genre) }
  end
end
