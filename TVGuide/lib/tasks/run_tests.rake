task :prepare_tests do
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
  Rake::Task['code_check'].invoke
end
