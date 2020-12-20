class Movie < ApplicationRecord
  include Generable
  has_one_attached :featured_image
  has_many :vhs

  validates :title, :year, :description, :director, :length, presence: true
end
