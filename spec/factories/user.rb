FactoryGirl.define do
  factory :user do
    name "name"
    sequence(:email) { |n| "user#{n}@factory.com" }
    password "password"
  end
end
