# -*- encoding: utf-8 -*-
require File.expand_path('../lib/guard/spin_cucumber/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "guard-spin_cucumber"
  gem.version       = Guard::SpinCucumberVersion::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ["Ricky Robinson"]
  gem.email         = ["ricky@rickyrobinson.id.au"]
  gem.description   = %q{Guard::SpinCucumber pushes cucumber runs to the spin server.}
  gem.summary       = %q{Pushes watched files to Spin}
  gem.homepage      = "http://github.com/rickyrobinson/guard-spin_cucumber"

  gem.add_dependency 'guard'
  gem.add_dependency 'spin'

  gem.add_development_dependency 'bundler', '>= 1.0'
  gem.add_development_dependency 'rspec', '>= 2.0'

  gem.files         = Dir.glob('{lib}/**/*') + %w[LICENSE README.md]
  gem.require_path  = 'lib'
end
