# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lesson do
    title "MyString"
    description "MyString"
    body "MyText"
    number 1
    course nil
  end
end
