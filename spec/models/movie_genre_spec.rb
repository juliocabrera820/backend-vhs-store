require 'rails_helper'

RSpec.describe MovieGenre, type: :model do
  describe 'associations' do
    it { should belong_to :genre }
    it { should belong_to :movie }
  end
end
