FactoryGirl.define do
  factory :channel do
    name { "#{Faker::Commerce.product_name} #{Faker::Company.buzzword}" }
    category
  end
end
