# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    title "MyString"
    body "MyText"
    number 1
    lesson nil
  end
end
