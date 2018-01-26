# frozen_string_literal: true

source "https://rubygems.org"
gemspec

unless ENV["TRAVIS"]
  gem "byebug", require: false, platforms: :mri if RUBY_VERSION >= "2.2.0"
  gem "yard",   require: false
end

gem "hanami-devtools", git: "https://github.com/hanami/devtools.git", require: false
