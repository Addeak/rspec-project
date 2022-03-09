class MusicTracker
  def initialize
    @listened_tracks = []
  end

  def add(track)
    fail "Tracks cannot be an empty string." if track == ""
    @listened_tracks << track
  end

  def show_list
    fail "No tracks have been listened to." if @listened_tracks == []
    @listened_tracks.join(", ")
  end
end