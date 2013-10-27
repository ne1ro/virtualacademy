# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    text "MyString"
    user nil
    course nil
    rate 1
  end
end
