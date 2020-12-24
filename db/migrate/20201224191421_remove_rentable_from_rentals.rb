class RemoveRentableFromRentals < ActiveRecord::Migration[6.1]
  def change
    remove_reference :rentals, :rentable, polymorphic: true, null: false
  end
end
