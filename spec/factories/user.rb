FactoryGirl.define do
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    password "testtest"
    password_confirmation  "testtest"

    trait :admin do
      role "0"
    end
  end
end
