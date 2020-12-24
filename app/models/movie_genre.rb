class MovieGenre < ApplicationRecord
  validates :movie_id, :genre_id, presence: true

  belongs_to :genre
  belongs_to :movie
end
