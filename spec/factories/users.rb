FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }

    first_name { Forgery::Name.first_name }
    last_name { Forgery::Name.last_name }
  end
end
