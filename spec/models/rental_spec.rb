require 'rails_helper'

RSpec.describe Rental, type: :model do
  describe 'associations' do
    it { should belong_to :client }
    it { should belong_to :vhs }
  end
end
