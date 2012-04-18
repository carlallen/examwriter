# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'example@example.com'
    password 'testuserpassword'
    password_confirmation 'testuserpassword'
  end
end