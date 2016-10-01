FactoryGirl.define do
  factory :show do
    name { "#{Faker::Company.buzzword} #{Faker::Commerce.product_name}" }
    channel
  end
end
