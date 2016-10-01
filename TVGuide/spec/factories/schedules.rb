FactoryGirl.define do
  factory :schedule do
    show
    date { Faker::Date.between(Date.today, 5.weeks.from_now) }
  end
end
