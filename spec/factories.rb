FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "foobar"

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end

  factory :apartment do
    apartment_name     "Michael Hartl"
    address    "michael@example.com"
    city     "foobar"
    state     "TX."
    zip_code     "12345"
    phone_number     "(555)555-5555"
    area     "Example Central"
    ad_title     "The Title Goes Here"
    description     "The wonderful description goes here"
  end
end
