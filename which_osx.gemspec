require File.join(File.dirname(__FILE__), "lib", "version")

Gem::Specification.new do |s|
  s.name = "which_osx"
  s.version = WhichOsx::VERSION
  s.authors = ["Kristian Freeman"]
  s.email = ["kristian@kayeff.me"]
  s.homepage = "http://github.com/imkmf/which_osx"
  s.description = s.summary = "A simple ruby program for returning the version number of the current Mac OS X system."

  s.platform = Gem::Platform::RUBY
  s.has_rdoc = false
  s.summary = "A simple ruby program for returning the version number of the current Mac OS X system."

  s.executables << 'which_osx'

  s.add_development_dependency 'rspec', '~> 1.3.2'
  s.add_development_dependency 'rake', '~> 0.8.7'

  s.require_path = 'lib'
  s.autorequire = ''
  s.files = %w(LICENSE README.md NOTICE Rakefile) + Dir.glob("{lib,spec}/**/*")
end
