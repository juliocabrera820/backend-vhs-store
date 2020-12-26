require 'rails_helper'

RSpec.describe Api::V1::ClientsController, type: :controller do
  describe 'POST #create' do
    it 'creates a new client' do
      params = { name: 'horror', home_address: 'c 88 #454' }
      should permit(:name).for(:create, params: params)
    end
  end
  describe 'POST #create' do
    it 'does not create a new client' do
      params = { name: 'horror', home_address: 'c 88 #454', zip_code: '854222' }
      should_not permit(:zip_code).for(:create, params: params)
    end
  end
  describe 'GET #show' do
    it { should use_before_action(:set_client) }
  end
  describe 'DELETE #destroy' do
    it { should use_before_action(:set_client) }
  end
end
