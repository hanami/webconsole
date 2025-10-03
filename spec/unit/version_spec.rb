# frozen_string_literal: true

RSpec.describe "Hanami::Webconsole::VERSION" do
  it "exposes version" do
    expect(Hanami::Webconsole::VERSION).to eq("2.3.0.beta1")
  end
end
