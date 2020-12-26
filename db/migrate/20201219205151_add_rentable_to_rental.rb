class AddRentableToRental < ActiveRecord::Migration[6.1]
  def change
    add_reference :rentals, :rentable, polymorphic: true, null: false
  end
end
