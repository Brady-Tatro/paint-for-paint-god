require 'factory_girl_rails'

FactoryGirl.define do
  factory :color do
    sequence(:name) { |n| "Blood#{n} for the blood god" }
    sequence(:hex) { |n| "#834F#{n}4"}
  end
end
