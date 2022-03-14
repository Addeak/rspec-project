class Track
  def initialize(title, artist) 
    fail "Missing title or artist." if title.empty? || artist.empty?
    @title = title
    @artist = artist
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
  end
end