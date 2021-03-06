# frozen_string_literal: true

RSpec.describe "Show error page", type: :integration do
  it "shows error page on exception" do
    with_project do
      generate "action web home#index --url=/"
      rewrite "apps/web/controllers/home/index.rb", <<~CODE
        module Web::Controllers::Home
          class Index
            include Web::Action

            def call(params)
              params.foo
            end
          end
        end
CODE

      server("no-code-reloading" => nil) do
        get "/"

        expect(last_response.status).to eq(500)
        expect(last_response.body).to   include("NoMethodError")
        expect(last_response.body).to   include("params.foo")
      end
    end
  end

  private

  def with_project(*args)
    super(*args) do
      replace "Gemfile", "hanami-webconsole", %(gem "hanami-webconsole", path: "#{Pathname.new(__dir__).join('..', '..').realpath}")
      bundle_install
      yield
    end
  end
end
