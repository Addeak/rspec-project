require 'track'

RSpec.describe Track do
  context "initialised with an empty string" do
   it "raises an error" do
    expect { Track.new("", "") }.to raise_error "Missing title or artist."
   end
  end
end