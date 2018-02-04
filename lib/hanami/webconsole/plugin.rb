# frozen_string_literal: true

require "better_errors"
require "binding_of_caller"

Hanami.plugin do
  middleware.use BetterErrors::Middleware
  BetterErrors.application_root = Hanami.root.to_s
end
