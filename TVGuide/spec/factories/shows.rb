FactoryGirl.define do
  factory :show do
    name { Faker::Commerce.product_name }
    channel
  end
end
