class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.boolean :current

      t.timestamps
    end
  end
end
