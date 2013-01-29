# # -*- encoding: utf-8 -*-
# lib = File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'zerp/version'

# Gem::Specification.new do |gem|
#   gem.name          = "zerp"
#   gem.version       = Zerp::VERSION
#   gem.authors       = ["Doug Friedman"]
#   gem.email         = ["dfriedman@mavensconsulting.com"]
#   gem.description   = %q{TODO: Write a gem description}
#   gem.summary       = %q{TODO: Write a gem summary}
#   gem.homepage      = ""

#   gem.files         = `git ls-files`.split($/)
#   gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
#   gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
#   gem.require_paths = ["lib"]
# end


# -*- encoding: utf-8 -*-
require File.expand_path('../lib/databasedotcom_console/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Doug Friedman"]
  gem.email         = ["dfriedm3@gmail.com"]
  gem.description   = %q{Quickly spin up a ruby console that can talk to your salesforce org.}
  gem.summary       = %q{Quickly spin up a ruby console that can talk to your salesforce org.}
  gem.homepage      = "http://mavens.io/"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = ["dbdc"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "databasedotcom_console"
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency "databasedotcom"
  gem.version       = DatabasedotcomConsole::VERSION
end