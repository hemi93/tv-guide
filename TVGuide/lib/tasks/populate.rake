require 'factory_girl'

namespace :populate do
  task random_data: :environment do
    desc 'Create sample data'

    puts 'Populating database with sample data...'
    FactoryGirl.create_list(:channel, 5, :with_shows_and_schedules)
  end
end
