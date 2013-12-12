require 'faker'
FactoryGirl.define do
  factory :lesson do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    body { Faker::Lorem.paragraph }
    number 1
    course nil
  end
end
