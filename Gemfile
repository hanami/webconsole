# frozen_string_literal: true

source "https://rubygems.org"
gemspec

unless ENV["CI"]
  gem "byebug", require: false, platforms: :mri if RUBY_VERSION >= "2.2.0"
  gem "yard",   require: false
end

gem "hanami-utils",       "~> 1.3", require: false, git: "https://github.com/hanami/utils.git",       branch: "1.3.x"
gem "hanami-validations", "~> 1.3", require: false, git: "https://github.com/hanami/validations.git", branch: "1.3.x"
gem "hanami-router",      "~> 1.3", require: false, git: "https://github.com/hanami/router.git",      branch: "1.3.x"
gem "hanami-controller",  "~> 1.3", require: false, git: "https://github.com/hanami/controller.git",  branch: "1.3.x"
gem "hanami-view",        "~> 1.3", require: false, git: "https://github.com/hanami/view.git",        branch: "1.3.x"
gem "hanami-model",       "~> 1.3", require: false, git: "https://github.com/hanami/model.git",       branch: "1.3.x"
gem "hanami-helpers",     "~> 1.3", require: false, git: "https://github.com/hanami/helpers.git",     branch: "1.3.x"
gem "hanami-mailer",      "~> 1.3", require: false, git: "https://github.com/hanami/mailer.git",      branch: "1.3.x"
gem "hanami-assets",      "~> 1.3", require: false, git: "https://github.com/hanami/assets.git",      branch: "1.3.x"
gem "hanami",             "~> 1.3", require: false, git: "https://github.com/hanami/hanami.git",      branch: "1.3.x"

gem "hanami-devtools", git: "https://github.com/hanami/devtools.git", branch: "1.3.x", require: false

platforms :ruby do
  gem 'sqlite3'
end

platforms :jruby do
  gem 'jdbc-sqlite3'
end
