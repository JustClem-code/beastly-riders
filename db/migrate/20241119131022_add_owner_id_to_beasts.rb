class AddOwnerIdToBeasts < ActiveRecord::Migration[7.2]
  def change
    add_reference :beasts, :owner, foreign_key: { to_table: "users" }, null: false
  end
end
