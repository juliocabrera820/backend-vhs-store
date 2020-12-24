class AddGenreReferenceToMovieGenres < ActiveRecord::Migration[6.1]
  def change
    add_reference :movie_genres, :genre, null: false, foreign_key: true
  end
end
