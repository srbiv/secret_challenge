# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secret_challenge/version'

Gem::Specification.new do |spec|
  spec.name          = "secret_challenge"
  spec.version       = SecretChallenge::VERSION
  spec.authors       = ["Stafford Brooke"]
  spec.email         = ["staffordbrooke@gmail.com"]
  spec.summary       = %q{Coding Sample}
  spec.description   = %q{Coding Sample, Please Take One}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
