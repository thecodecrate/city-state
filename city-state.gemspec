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
  spec.homepage      = "https://github.com/loureirorg/city-state"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "rubyzip", "~> 1.1"
end
