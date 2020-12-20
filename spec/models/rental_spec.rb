require 'rails_helper'

RSpec.describe Rental, type: :model do
  describe 'validations' do
    it { should validate_presence_of :current }
  end
  # TODO: Add associations
  describe 'associations' do
    it { should belong_to :client }
    it { should belong_to :vhs }
  end
end
