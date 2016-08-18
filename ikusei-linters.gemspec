# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ikusei/linters/version"

Gem::Specification.new do |spec|
  spec.name = "ikusei-linters"
  spec.version = Ikusei::Linters::VERSION
  spec.authors = ["Niklas Hofer\n"]
  spec.email = ["niklas+dev@lanpartei.de"]

  spec.summary = "Collection of all linter configuration files for the ikusei GmbH style
  guides."
  spec.description = "This are our configuration files for scss-lint, Rubocop and ESLint. If you
  want to work on project's together with ikusei, please take the time to set up your environment to
  use these configuration files."
  spec.homepage = "https://github.com/ikuseiGmbH/linters"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "scss_lint"
  spec.add_dependency "eslintrb"
  spec.add_dependency "rubocop"
end
