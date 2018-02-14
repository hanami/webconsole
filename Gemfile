# frozen_string_literal: true

source "https://rubygems.org"
gemspec

unless ENV["TRAVIS"]
  gem "byebug", require: false, platforms: :mri if RUBY_VERSION >= "2.2.0"
  gem "yard",   require: false
end

gem "hanami-utils",       "1.2.0.beta1", require: false, git: "https://github.com/hanami/utils.git",       branch: "develop"
gem "hanami-validations", "1.2.0.beta1", require: false, git: "https://github.com/hanami/validations.git", branch: "develop"
gem "hanami-router",      "1.2.0.beta1", require: false, git: "https://github.com/hanami/router.git",      branch: "develop"
gem "hanami-controller",  "1.2.0.beta1", require: false, git: "https://github.com/hanami/controller.git",  branch: "develop"
gem "hanami-view",        "1.2.0.beta1", require: false, git: "https://github.com/hanami/view.git",        branch: "develop"
gem "hanami-model",       "1.2.0.beta1", require: false, git: "https://github.com/hanami/model.git",       branch: "develop"
gem "hanami-helpers",     "1.2.0.beta1", require: false, git: "https://github.com/hanami/helpers.git",     branch: "develop"
gem "hanami-mailer",      "1.2.0.beta1", require: false, git: "https://github.com/hanami/mailer.git",      branch: "develop"
gem "hanami-assets",      "1.2.0.beta1", require: false, git: "https://github.com/hanami/assets.git",      branch: "develop"
gem "hanami-cli",         "0.2.0.beta1", require: false, git: "https://github.com/hanami/cli.git",         branch: "develop"
gem "hanami",             "1.2.0.beta1", require: false, git: "https://github.com/hanami/hanami.git",      branch: "develop"

gem "hanami-devtools", git: "https://github.com/hanami/devtools.git", require: false
