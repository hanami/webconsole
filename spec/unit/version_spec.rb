# frozen_string_literal: true

RSpec.describe "Hanami::Webconsole::VERSION" do
  it "exposes version" do
    expect(Hanami::Webconsole::VERSION).to eq("2.2.0.rc1")
  end
end
