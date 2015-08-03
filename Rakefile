#!/usr/bin/env rake

require 'foodcritic'
# sh("foodcritic --chef-version #{Chef::VERSION} --epic-fail any --tags ~FC054 '#{path}'")
require 'rake/testtask'
require 'rspec/core/rake_task'

FoodCritic::Rake::LintTask.new do |t|
  t.options = { :fail_tags => ['any'] }
end

RSpec::Core::RakeTask.new(:spec)

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new
# sh(*%w{kitchen test -d always})
rescue LoadError
  puts ">>>>> test-kitchen gem not loaded, omitting tasks" unless ENV['CI']
end

task :default => [:foodcritic, :spec]
