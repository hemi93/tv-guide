task :code_check do
  Rake::Task['rubocop:lint'].invoke
  Rake::Task['factory_girl:lint'].invoke
  Rake::Task['reek:lint'].invoke
end
