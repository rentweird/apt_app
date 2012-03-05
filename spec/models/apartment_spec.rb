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


require 'spec_helper'

describe Apartment do
  before do
    @apartment = Apartment.new(apartment_name: "Example Apartment", 
	  								  address: "123 Example Ln. #123", 
	  								  city: "cityhere", state: "ZZ.", 
	  								  zip_code: "99999", phone_number: "555-555-5555",
	                                  area: "Example Central",
	  								  ad_title: "This is an Example Title",
	  								  description: "Here is where you describe the Apartments...",)
  end

  subject { @apartment }

  it { should respond_to(:apartment_name) }
  it { should respond_to(:address) }
  it { should respond_to(:state) }
  it { should respond_to(:zip_code) }
  it { should respond_to(:phone_number) }
  it { should respond_to(:area) }
  it { should respond_to(:ad_title) }
  it { should respond_to(:description) }

  it {should be_valid}

  describe "when apartment name is not present" do
    before { @apartment.apartment_name = " " }
    it { should_not be_valid }
  end

  describe "when address is not present" do
    before { @apartment.address = " " }
    it { should_not be_valid }
  end

  describe "when city is not present" do
    before { @apartment.city = " " }
    it { should_not be_valid }
  end

  describe "when state is not present" do
    before { @apartment.state = " " }
    it { should_not be_valid }
  end

  describe "when zip code is not present" do
    before { @apartment.zip_code = " " }
    it { should_not be_valid }
  end

  describe "when phone number is not present" do
    before { @apartment.phone_number = " " }
    it { should_not be_valid }
  end

  describe "when area is not present" do
    before { @apartment.area = " " }
    it { should_not be_valid }
  end

  describe "when ad title is not present" do
    before { @apartment.ad_title = " " }
    it { should_not be_valid }
  end

  describe "when apartment name is too long" do
    before { @apartment.apartment_name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when address is too long" do
    before { @apartment.address = "a" * 51 }
    it { should_not be_valid }
  end

    describe "when city name is too long" do
    before { @apartment.city = "a" * 26 }
    it { should_not be_valid }
  end

  describe "when state is too long" do
    before { @apartment.state = "a" * 26 }
    it { should_not be_valid }
  end

  describe "when zip code is too long" do
    before { @apartment.zip_code = "a" * 6 }
    it { should_not be_valid }
  end

    describe "when phone number is too long" do
    before { @apartment.phone_number = "a" * 14 }
    it { should_not be_valid }
  end

  describe "when area is too long" do
    before { @apartment.area = "a" * 26 }
    it { should_not be_valid }
  end  

  describe "when ad title is too long" do
    before { @apartment.ad_title = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when description name is too long" do
    before { @apartment.description = "a" * 251 }
    it { should_not be_valid }
  end

  describe "when apartment name is already taken" do
    before do
      apartment_with_same_apartment_name = @apartment.dup
      apartment_with_same_apartment_name.save
    end

    it { should_not be_valid }
  end

  describe "when address is already taken" do
    before do
      apartment_with_same_address = @apartment.dup
      apartment_with_same_address.address = @apartment.address.upcase
      apartment_with_same_address.save
    end

    it { should_not be_valid }
  end
end


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