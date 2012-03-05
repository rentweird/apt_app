class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :apartment_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.string :area
      t.string :ad_title
      t.string :description

      t.timestamps
    end
  end
end
