# frozen_string_literal: true

RSpec.describe "Hanami::Webconsole::VERSION" do
  it "exposes version" do
    expect(Hanami::Webconsole::VERSION).to eq("0.1.0.beta1")
  end
end
