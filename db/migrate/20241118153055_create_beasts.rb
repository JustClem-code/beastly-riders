class CreateBeasts < ActiveRecord::Migration[7.2]
  def change
    create_table :beasts do |t|
      t.string :name
      t.string :description
      t.string :price_per_day
      t.string :image
      t.string :category
      t.string :speed

      t.timestamps
    end
  end
end
