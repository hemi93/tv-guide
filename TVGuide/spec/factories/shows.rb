FactoryGirl.define do
  factory :show do
    channel
    name { "#{Faker::Company.buzzword} #{Faker::Commerce.product_name}" }

    trait :with_schedules do
      transient do
        schedules_amount 10
      end

      after(:create) do |show, evaluator|
        create_list(:schedule, evaluator.schedules_amount, show: show)
      end
    end
  end
end
