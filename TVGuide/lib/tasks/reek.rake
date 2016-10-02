namespace :reek do
  desc 'Verify App and Specs code quality'
  task lint: :environment do
    if %w(development test).include? Rails.env
      require 'reek/rake/task'

      task = Reek::Rake::Task.new do |t|
        t.config_file   = 'config/config.reek'
        t.fail_on_error = true
      end

      task.send(:run_task)
    end
  end
end
