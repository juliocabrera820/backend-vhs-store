require 'rails_helper'

RSpec.describe MovieGenre, type: :model do
  # TODO: Add associations in models
  describe 'associations' do
    it { should belong_to :genre }
    it { should belong_to :movie }
  end
end
