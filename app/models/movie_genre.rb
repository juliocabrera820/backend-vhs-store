# == Schema Information
# Schema version: 20201224193623
#
# Table name: movie_genres
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  genre_id   :bigint           not null
#  movie_id   :bigint           not null
#
# Foreign Keys
#
#  fk_rails_6f8a28d404  (genre_id => genres.id)
#  fk_rails_e153f3c39b  (movie_id => movies.id)
#
class MovieGenre < ApplicationRecord
  validates :movie_id, :genre_id, presence: true

  belongs_to :genre
  belongs_to :movie
end
