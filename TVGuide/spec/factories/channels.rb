FactoryGirl.define do
  factory :channel do
    name { Faker::Commerce.product_name }
    category
  end
end
