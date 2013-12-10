require 'faker'

FactoryGirl.define do
  factory :review do
    text {Faker::Lorem.sentence}
    user nil
    course nil
    rate {Random.rand(10) + 1}
  end
end
