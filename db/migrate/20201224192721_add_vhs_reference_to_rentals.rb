class AddVhsReferenceToRentals < ActiveRecord::Migration[6.1]
  def change
    add_reference :rentals, :vhs, null: false, foreign_key: true
  end
end
