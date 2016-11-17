require 'factory_girl_rails'

FactoryGirl.define do
  factory :color do
    sequence(:name) { |n| "Blood#{n} for the blood god" }
    sequence(:hex) { |n| "#834F#{n}4"}
  end
  factory :picture do
    army 'Necrons'
    primer 'Chaos Black'
    base 'Lead Belcher'
    highlight 'Necron Compound'
    shade 'Nuln Oil'
  end
end
