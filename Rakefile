require 'jekyll'
require 'rake/testtask'

task default: 'test'

Rake::TestTask.new do |task|
  task.pattern = 'test/*_test.rb'
end

# Rake Jekyll tasks
task :build do
  puts 'Building site...'
  Jekyll::Commands::Build.process(profile: true)
end

task :clean do
  puts 'Cleaning up _site...'
  Jekyll::Commands::Clean.process({})
end

task :deploy do
  sh './bin/deploy.sh'
end