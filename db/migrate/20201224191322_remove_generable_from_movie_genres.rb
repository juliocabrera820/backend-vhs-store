class RemoveGenerableFromMovieGenres < ActiveRecord::Migration[6.1]
  def change
    remove_reference :movie_genres, :generable, polymorphic: true, null: false
  end
end
