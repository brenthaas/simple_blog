FactoryGirl.define do
  factory :user do
    sequence(:first_name){|n| "First#{n}" }
    sequence(:last_name){|n| "Last#{n}" }
    sequence(:email){|n| "user#{n}@factory.com" }
    password "example123"
    password_confirmation "example123"
  end
end
