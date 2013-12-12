require 'faker'
FactoryGirl.define do
  factory :course do
    title {Faker::Lorem.sentence}
    description {Faker::Lorem.paragraph}
    cost {(Random.rand(100)+1).fdiv 10}
    body {Faker::Lorem.paragraph}
    user nil
  end
end
