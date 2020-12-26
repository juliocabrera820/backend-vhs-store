class AddMovieRefToVhs < ActiveRecord::Migration[6.1]
  def change
    add_reference :vhs, :movie, null: false, foreign_key: true
  end
end
