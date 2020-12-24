require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :year }
    it { should validate_presence_of :description }
    it { should validate_presence_of :length }
    it { should validate_presence_of :director }
  end
  describe 'associations' do
    it { should have_one_attached :featured_image }
    # TODO: Add association
    it { should have_many :vhs }
    it { should have_many :movie_genres }
  end
end