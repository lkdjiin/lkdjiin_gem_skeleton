# -*- encoding: utf-8 -*-

# todo: replace [GEM] by th gem name

require 'rake'
require 'rspec/core/rake_task'

desc 'Test [GEM]'
task :default => :spec

desc 'Test [GEM] with rspec'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = ['--color --format documentation']
end

desc 'Check for code smells'
task :reek do
  puts 'Checking for code smells...'
  files = Dir.glob 'lib/**/*.rb'
  args = files.join(' ')
  sh "reek --quiet #{args} | ./reek.sed"
end

desc 'Build [GEM] & install it'
task :install do
  sh "gem build [GEM].gemspec"
	f = FileList['[GEM]*gem'].to_a
	sh "gem install #{f.first} --no-rdoc --no-ri"
end
