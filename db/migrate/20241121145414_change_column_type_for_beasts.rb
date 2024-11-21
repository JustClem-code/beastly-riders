class ChangeColumnTypeForBeasts < ActiveRecord::Migration[7.2]
  def change
    remove_column :beasts, :speed
    add_column :beasts, :speed, :float
    remove_column :beasts, :price_per_day
    add_column :beasts, :price_per_day, :float
  end
end
