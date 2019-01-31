# encoding: utf-8

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'linter/version'

Gem::Specification.new do |spec|
  spec.name          = "linter"
  spec.version       = Linter::VERSION
  spec.authors       = ["Marco Metz"]
  spec.email         = ["marco.metz@gmail.com"]
  spec.summary       = %q{Linter files}
  spec.description   = %q{Adding linter files .rubocop.yml, .sccs-lint.yml and .eslintrc to your app}
  spec.homepage      = "https://github.com/ikuseiGmbH/linters"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "rubocop", "~> 0.63.1"
  spec.add_dependency "rubocop-rspec"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
