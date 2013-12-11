require 'faker'

FactoryGirl.define do
  factory :user do
    fullname { Faker::Name.first_name + Faker::Name.last_name }
    photo { Faker::Internet.url }
    email { Faker::Internet.email }
    about { Faker::Lorem.sentence + Faker::Lorem.sentence }
    nickname { Faker::Internet.slug }
    location { Faker::Address.state }
    password "Ghj10293_lkj_"
    password_confirmation { "Ghj10293_lkj_" }
  end
end
