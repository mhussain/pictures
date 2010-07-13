require 'rubygems'
require 'cucumber'
require "cucumber/rake/task"

desc "Running all the in progress features"
namespace :features do
  Cucumber::Rake::Task.new(:in_progress) do |task|
    task.cucumber_opts = ["-t", "@in_progress"]
  end

  Cucumber::Rake::Task.new(:complete) do |task|
    task.cucumber_opts = ["-t", "~@in_progress"]
  end

  Cucumber::Rake::Task.new(:all) do |task|
  end
end
