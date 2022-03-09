## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class MusicTracker
  def initialize
    @listened_tracks = []
  end

  def add(track) #task is a string
    # no return value
    # raises error if an empty string is input
  end

  def show_list
    # raises error if no tasks are set
    # returns a string with the list of tracks
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

# 1
tracker = MusicTracker.new
tracker.add("Make it witchu")
tracker.show_list # => "Make it witchu"

# 2
tracker = MusicTracker.new
tracker.add("") # raises error "Tracks cannot be an empty string."

# 3
tracker = MusicTracker.new
tracker.add("Make it witchu")
tracker.add("Fortress")
tracker.show_list # => "Make it witchu, Fortress"

# 4
tracker = MusicTracker.new
tracker.show_list # raises error "No tracks have been listened to."
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._