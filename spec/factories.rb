FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name  "Doe"
    email "example@example.com"
    password "example123"
    password_confirmation "example123"
  end
end
