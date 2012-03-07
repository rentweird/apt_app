require 'spec_helper'

describe "Apartment pages" do

  subject { page }
  
  describe "apartment profile page" do
    let(:apartment) { FactoryGirl.create(:apartment) }
    before { visit apartment_path(apartment) }

    it { should have_selector('h1',    text: apartment.apartment_name) }
    it { should have_selector('title', text: apartment.apartment_name) }
  end

  describe "apartment signup page" do
    before { visit apartment_signup_path }

    it { should have_selector('h1',    text: 'Apartment Sign up') }
    it { should have_selector('title', text: full_title('Apartment Sign up')) }
  end

  describe "apartment signup" do

    before { visit apartment_signup_path }

    describe "with invalid information" do
      it "should not create an apartment" do
        expect { click_button "Apartment Sign up" }.not_to change(Apartment, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Apartment_Name",  with: "The Pad"
        fill_in "Address",         with: "123 Main St."
        fill_in "City",            with: "Foobar City"
        fill_in "State",           with: "EX."
        fill_in "Zip_Code",        with: "123 Main St."
        fill_in "Phone_Number",    with: "(555)555-5555"
        fill_in "Area",            with: "123 Main St."
        fill_in "Ad_Title",        with: "Foobar Foobar!!!"
        fill_in "Description",     with: "Foobar foobar foobar."
      end

      it "should create an apartment" do
        expect { click_button "Apartment Sign up" }.to change(Apartment, :count).by(1)
      end
    end
  end
end


