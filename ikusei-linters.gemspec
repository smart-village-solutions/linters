# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ikusei/linters/version"

Gem::Specification.new do |spec|
  spec.name = "ikusei_linters"
  spec.version = Ikusei::Linters::VERSION
  spec.authors = ["Niklas Hofer", "Holger Frohloff"]
  spec.email = ["info@ikusei.de"]
  spec.license = "MIT"
  spec.summary = "Collection of all linter configuration files for the ikusei GmbH style
  guides."
  spec.description = "This are our configuration files for scss-lint, Rubocop and ESLint. If you
  want to work on project's together with ikusei, please take the time to set up your environment to
  use these configuration files."
  spec.homepage = "https://github.com/ikuseiGmbH/linters"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "scss_lint", "~> 0.50"
  spec.add_dependency "eslintrb", "~> 2.1"
  spec.add_dependency "rubocop", "~> 0.42"
end
