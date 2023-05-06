# frozen_string_literal: true

source "https://rubygems.org"
gemspec

unless ENV["CI"]
  gem "byebug", platforms: :mri
  gem "yard"
end

gem "rake", "~> 13.0"

group :test do
  gem "rspec", "~> 3.12"
end
