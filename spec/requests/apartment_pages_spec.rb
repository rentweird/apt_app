require 'spec_helper'

describe "Apartment Pages" do

  subject { page }

  describe "apartment signup page" do
    before { visit apartment_signup_path }

    it { should have_selector('h1',    text: 'Apartment Sign up') }
    it { should have_selector('title', text: full_title('Apartment Sign up')) }
  end
end

