#!/usr/bin/env rake

require 'rake/testtask'
require 'rubygems/package_task' 

GEMSPEC = eval(File.read('git_feature.gemspec'))
Gem::PackageTask.new(GEMSPEC) do |pkg|
end

Rake::TestTask.new do |t|
  t.pattern = 'test/**/*_test.rb'
  t.libs << 'test'
end

desc "Run tests"
task :default => :test
