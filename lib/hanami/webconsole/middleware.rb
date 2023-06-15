# frozen_string_literal: true

module Hanami
  module Webconsole
    # @api private
    # @since 2.1.0
    class Middleware
      # @api private
      # @since 2.1.0
      def initialize(app)
        @better_errors = BetterErrors::Middleware.new(app)
        configure_better_errors
      end

      # @api private
      # @since 2.1.0
      def call(...)
        @better_errors.call(...)
      end

      private

      def configure_better_errors
        BetterErrors.application_root = Hanami.app.root.to_s
      end
    end
  end
end
