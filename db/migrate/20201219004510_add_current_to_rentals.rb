class AddCurrentToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :current, :boolean, default: true
  end
end
