require 'rubygems' unless ENV['NO_RUBYGEMS']
require 'rubygems/package_task'
require 'rake/rdoctask' unless RUBY_VERSION >= '1.9.0'
require 'rdoc/task' unless RUBY_VERSION <= '1.9.0'
require 'rubygems/specification'
require 'rspec/core/rake_task'
require 'yard'

spec = Gem::Specification.load("#{File.dirname(__FILE__)}/which_osx.gemspec")

task :default => :spec

# Generate docs
YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']   # optional
  t.options = ['--any', '--extra', '--opts'] # optional
end

# Run specs
desc "Run specs"
RSpec::Core::RakeTask.new(:core) do |spec|
  spec.pattern = 'spec/*_spec.rb'
  spec.rspec_opts = ['--backtrace']
end

# Gem tasks
Gem::PackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "install the gem locally"
task :install => [:package] do
  sh %{gem install pkg/#{spec.name}-#{spec.version}}
end
