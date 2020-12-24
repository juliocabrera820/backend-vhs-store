require 'rails_helper'

RSpec.describe Api::V1::VhsController, type: :controller do
  describe 'POST #create' do
    it 'creates a new vhs' do
      params = { serial_number: 15616165, movie_id: 1 }
      should permit(:serial_number, :movie_id).for(:create, params: params)
    end
  end
  describe 'POST #create' do
    it 'does not create a new vhs' do
      params = { serial_number: 15616165, movie_id: 1, color: 'black' }
      should_not permit(:color).for(:create, params: params)
    end
  end
  describe 'GET #show' do
    it { should use_before_action(:set_vhs) }
  end
  describe 'DELETE #destroy' do
    it { should use_before_action(:set_vhs) }
  end
end
