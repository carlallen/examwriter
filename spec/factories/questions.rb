# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :true_false_question do
    question 'This is a Question?'
    type 'TrueFalseQuestion'
    answer 'F'
  end
end