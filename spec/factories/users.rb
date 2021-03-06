# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { '12345678' }
    confirmed_at { Time.zone.now }

    factory :admin do
      role { 'admin' }
    end
  end
end
