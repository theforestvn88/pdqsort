# frozen_string_literal: true

RSpec.describe Pdqsort do
  it "has a version number" do
    expect(Pdqsort::VERSION).not_to be nil
  end

  it "does something useful" do
    a = (1..1000000).to_a.shuffle
    expect(a.pdqsort).to eq((1..1000000).to_a)
  end
end
