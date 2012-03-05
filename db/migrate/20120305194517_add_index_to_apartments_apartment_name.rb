class AddIndexToApartmentsApartmentName < ActiveRecord::Migration
  def change
    add_index :apartments, :apartment_name, unique: true
  end
end
