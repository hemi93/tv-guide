require 'term/ansicolor'

task :code_check do
  puts Term::ANSIColor.green
  puts 'Running code quality chcecks...'
  puts Term::ANSIColor.reset

  Rake::Task['rubocop:lint'].invoke
  Rake::Task['factory_girl:lint'].invoke
  Rake::Task['reek:lint'].invoke

  puts Term::ANSIColor.green
  puts 'Code is clean!'
  puts Term::ANSIColor.reset
end
