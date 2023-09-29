# frozen_string_literal: true

require "rack"

module Hanami
  module Webconsole
    # @api private
    # @since 2.1.0
    class Middleware
      # @api private
      # @since 2.1.0
      CAPTURE_EXCEPTION_PROC_KEY = "hanami.webconsole.capture_exception_proc"
      private_constant :CAPTURE_EXCEPTION_PROC_KEY

      # @see Middleware#call
      #
      # @api private
      # @since 2.1.0
      module BetterErrorsExtension
        # The BetterErrors middleware always returns a 500 status when rescuing an exception
        # (outside of Rails). This is not not always appropriate, such as for a
        # `Hanami::Router::NotFoundError`, which should be a 404.
        #
        # To account for this, gently patch `BetterErrors::Middleware#show_error_page` (which is
        # called only when an exception has been rescued) to pass that rescued exception to a proc
        # we inject into the rack env here in our own middleware. This allows our middleware to know
        # the about exception class and provide the correct status code after BetterErrors is done
        # with its job.
        #
        # @see Webconsole::Middleware#call
        def show_error_page(env, exception = nil)
          if (capture_proc = env[CAPTURE_EXCEPTION_PROC_KEY])
            capture_proc.call(exception)
          end

          super
        end
      end
      BetterErrors::Middleware.prepend(BetterErrorsExtension)

      # @api private
      # @since 2.1.0
      def initialize(app, config)
        @better_errors = BetterErrors::Middleware.new(app)
        @config = config

        configure_better_errors
      end

      # @api private
      # @since 2.1.0
      def call(env)
        rescued_exception = nil
        env[CAPTURE_EXCEPTION_PROC_KEY] = -> ex { rescued_exception = ex }

        status, headers, body = @better_errors.call(env)

        # Replace the BetterErrors status with a properly configured one for the Hanami app
        if rescued_exception
          status = Rack::Utils.status_code(
            @config.render_error_responses[rescued_exception.class.name]
          )
        end

        [status, headers, body]
      end

      private

      # @api private
      # @since 2.1.0
      def configure_better_errors
        BetterErrors.application_root = @config.root.to_s
      end
    end
  end
end
