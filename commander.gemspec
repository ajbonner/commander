# -*- encoding: utf-8 -*-

require File.expand_path('../lib/commander/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "commander"
  gem.version       = Commander::VERSION
  gem.summary       = %q{Library to issue service commands via SSH}
  gem.description   = %q{Commander provides a series of commands to be used to perform actions on
                         services hosted on remote servers accessible via SSH}
  gem.license       = "MIT"
  gem.authors       = ["Aaron Bonner"]
  gem.email         = "aaron@muscleandstrength.com"
  gem.homepage      = "https://rubygems.org/gems/commander"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rdoc', '~> 3.0'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'

  gem.add_dependency 'rye'
  gem.add_dependency 'nokogiri'
  gem.add_dependency 'awesome_print'
end
