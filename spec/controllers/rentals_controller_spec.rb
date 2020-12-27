require 'rails_helper'

RSpec.describe Api::V1::RentalsController, type: :controller do
  describe 'POST #create' do
    it 'creates a new rental' do
      params = { vhs_id: 1, client_id: 1 }
      should permit(:vhs_id, :client_id).for(:create, params: params)
    end
  end
  describe 'POST #create' do
    it 'does not create a new rental' do
      params = { vhs_id: 1, client_id: 1, price: 200 }
      should_not permit(:price).for(:create, params: params)
    end
  end
  describe 'GET #show' do
    it { should use_before_action(:set_rental) }
  end
  describe 'DELETE #destroy' do
    it { should use_before_action(:set_rental) }
  end
end