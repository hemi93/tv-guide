task :prepare_dev do
  Rake::Task['db:migrate'].invoke
  Rake::Task['db:setup'].invoke
  Rake::Task['populate:random_data'].invoke
end
