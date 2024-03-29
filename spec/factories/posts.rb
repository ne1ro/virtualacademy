require 'faker'

FactoryGirl.define do
  factory :post do
    title { Faker::Lorem.sentence }
    body {Faker::Lorem.paragraph }
    published true
  end
end
