class RenameNameToApartmentname < ActiveRecord::Migration
  def up
  	rename_column :apartments, :name, :apartment_name
  end

  def down
  end
end
