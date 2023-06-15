# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hanami/webconsole/version"

Gem::Specification.new do |spec|
  spec.name          = "hanami-webconsole"
  spec.version       = Hanami::Webconsole::VERSION
  spec.authors       = ["Luca Guidi"]
  spec.email         = ["me@lucaguidi.com"]
  spec.summary       = "Hanami webconsole"
  spec.description   = "Hanami webconsole for development"
  spec.homepage      = "http://hanamirb.org"
  spec.license       = "MIT"

  spec.files = `git ls-files -- lib/* CHANGELOG.md LICENSE.md README.md hanami-webconsole.gemspec`.split($INPUT_RECORD_SEPARATOR)
  spec.require_paths = ["lib"]

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  # Avoid 2.10.0 until https://github.com/BetterErrors/better_errors/issues/516 is fixed
  spec.add_dependency "better_errors", "~> 2.9", "< 2.10.0"
  spec.add_dependency "binding_of_caller", "~> 1.0"
end
