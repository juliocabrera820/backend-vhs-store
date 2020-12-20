class AddGenerableToMovieGenres < ActiveRecord::Migration[6.1]
  def change
    add_reference :movie_genres, :generable, polymorphic: true, null: false
  end
end
