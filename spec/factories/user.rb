FactoryBot.define do
  factory :user do
    sequence(:full_name) { |n| "user_name_#{n}" }
    sequence(:email)     { |n| "user_#{n}@example.com" }
  end
end
