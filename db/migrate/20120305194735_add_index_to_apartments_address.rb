class AddIndexToApartmentsAddress < ActiveRecord::Migration
  def change
    add_index :apartments, :address, unique: true
  end
end