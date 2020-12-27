class Movie < ApplicationRecord
  include Generable
  has_one_attached :featured_image
  has_many :vhs

  validates :title, :year, :description, :director, :length, :featured_image, presence: true
  validates :length, numericality: { only_integer: true }
end
