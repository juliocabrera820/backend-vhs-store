class Movie < ApplicationRecord
  has_one_attached :featured_image
  has_many :vhs

  validates :title, :year, :description, :director, :length, presence: true
  validates :length, numericality: { only_integer: true }
end
