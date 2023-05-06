# frozen_string_literal: true

source "https://rubygems.org"
gemspec

unless ENV["CI"]
  gem "byebug", platforms: :mri
  gem "yard"
end

gem "hanami-cli",         github: "hanami/cli",         branch: "main"
gem "hanami-controller",  github: "hanami/controller",  branch: "main"
gem "hanami-router",      github: "hanami/router",      branch: "main"
gem "hanami-utils",       github: "hanami/utils",       branch: "main"
gem "hanami-view",        github: "hanami/view",        branch: "main"

gem "hanami-devtools",    github: "hanami/devtools",    branch: "main"

gem "rake", "~> 13.0"

group :test do
  gem "rspec", "~> 3.12"
end
