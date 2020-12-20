require 'rails_helper'

RSpec.describe Vhs, type: :model do
  describe 'validations' do
    it { should validate_presence_of :serial_number }
  end
  describe 'associations' do
    it { should have_many :rentals }
    it { should belong_to :movie }
  end
end
