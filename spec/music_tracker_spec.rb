require 'music_tracker'

RSpec.describe MusicTracker do
  context "given a string" do
    it "returns the string" do
      tracker = MusicTracker.new
      tracker.add("Make it witchu")
      expect(tracker.show_list).to eq "Make it witchu"
    end
  end

  context "given an empty string" do
    it "raises an error" do
      tracker = MusicTracker.new
      expect { tracker.add("") }.to raise_error "Tracks cannot be an empty string."
    end
  end

  context "given several tracks" do
    it "returns all of them in a list" do
      tracker = MusicTracker.new
      tracker.add("Make it witchu")
      tracker.add("Fortress")
      expect(tracker.show_list).to eq "Make it witchu, Fortress"
    end
  end

  context "given no tracks" do
    it "raises an error" do
      tracker = MusicTracker.new
      expect { tracker.show_list }.to raise_error "No tracks have been listened to."
    end
  end
end