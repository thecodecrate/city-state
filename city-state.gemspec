# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'city-state/version'

Gem::Specification.new do |spec|
  spec.name          = "city-state"
  spec.version       = CS::VERSION
  spec.authors       = ["Daniel Loureiro"]
  spec.email         = ["loureirorg@gmail.com"]
  spec.summary       = %q{Simple list of cities and states of the world}
  spec.description   = %q{Useful to make forms and validations. It uses MaxMind database.}
  spec.homepage      = "https://github.com/thecodecrate/city-state"
  spec.license       = "MIT"

  spec.files = [
    'Rakefile',
    'README.md',
    'LICENSE.txt',
    'CHANGELOG.md',
    'city-state.gemspec'
  ] + Dir["lib/**/*"] + Dir["spec/**/*"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_development_dependency "bundler", ">= 1.7"
  spec.add_development_dependency "rake", ">= 11.0"
  spec.add_runtime_dependency "rubyzip", ">= 2.3"
  spec.add_development_dependency 'rspec', '~> 3.10'
end
