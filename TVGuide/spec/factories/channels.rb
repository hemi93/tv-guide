FactoryGirl.define do
  factory :channel do
    category
    name { "#{Faker::Commerce.product_name} #{Faker::Company.buzzword}" }

    trait :with_shows do
      transient do
        shows_amount 10
      end

      after(:create) do |channel, evaluator|
        create_list(:show, evaluator.shows_amount, channel: channel)
      end
    end

    trait :with_shows_and_schedules do
      transient do
        shows_amount 10
      end

      after(:create) do |channel, evaluator|
        create_list(:show, evaluator.shows_amount, :with_schedules, channel: channel)
      end
    end
  end
end
