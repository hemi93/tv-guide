FactoryGirl.define do
  factory :category do
    name { "#{Faker::Company.buzzword} #{Faker::Commerce.department}" }
  end
end
