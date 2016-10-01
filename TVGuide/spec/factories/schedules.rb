FactoryGirl.define do
  factory :schedule do
    date { Faker::Date.between(Date.today, 5.weeks.from_now) }
    show
  end
end
