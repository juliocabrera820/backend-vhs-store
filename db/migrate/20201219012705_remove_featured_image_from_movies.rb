class RemoveFeaturedImageFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :featured_image, :string
  end
end
