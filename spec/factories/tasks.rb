require 'faker'

FactoryGirl.define do
  factory :task do
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
    number 1
    lesson nil
  end
end
