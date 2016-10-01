FactoryGirl.define do
  factory :channel do
    name { "#{Faker::Commerce.product_name} #{Faker::Company.buzzword}" }
    category

    trait :with_shows do
      transient do
        shows_amount 10
      end

      after(:create) do |channel, evaluator|
        create_list(:show, evaluator.shows_amount, channel: channel)
      end
    end
  end
end
