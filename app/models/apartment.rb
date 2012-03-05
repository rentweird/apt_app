# == Schema Information
#
# Table name: apartments
#
#  id             :integer         not null, primary key
#  apartment_name :string(255)
#  address        :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip_code       :string(255)
#  phone_number   :string(255)
#  area           :string(255)
#  ad_title       :string(255)
#  description    :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#


class Apartment < ActiveRecord::Base
  attr_accessible :apartment_name, :address, :city, :state, 
  										:zip_code, 
  										:phone_number,
  										:area,
  										:ad_title,
  										:description						
  										
  validates :apartment_name, presence: true, length: { maximum: 50 },  
  				uniqueness: { case_sensitive: false }
  
  validates :address, presence: true, length: { maximum: 50 },  
  				uniqueness: { case_sensitive: false }
  
  validates :city, presence: true, length: { maximum: 25 }
  
  validates :state, presence: true, length: { maximum: 25 } 
  
  validates :zip_code, presence: true, length: { maximum: 5 }

  validates :phone_number, presence: true, length: { maximum: 13 } 

  validates :area, presence: true, length: { maximum: 25 }
  
  validates :ad_title, presence: true, length: { maximum: 50 }
  
  validates :description, length: { maximum: 250 }
end


