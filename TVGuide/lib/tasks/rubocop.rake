namespace :rubocop do
  desc 'Verify App and Specs code quality'
  task lint: :environment do
    if %w(development test).include? Rails.env
      require 'rubocop/rake_task'

      task = RuboCop::RakeTask.new
      task.fail_on_error = true
      task.run_main_task(true)
    end
  end
end
