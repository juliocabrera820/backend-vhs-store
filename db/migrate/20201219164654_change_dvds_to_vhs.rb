class ChangeDvdsToVhs < ActiveRecord::Migration[6.1]
  def change
    rename_table :dvds, :vhs
  end
end
