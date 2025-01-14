## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Reminder
  def initialize
    @todo_list = []
  end

  def add(task) #task is a string
    # no return value
    # raises error if an empty string is input
  end

  def complete(task) #task is a string
    # no return value
    # raises error if an empty strng is input
  end

  def remind_me
    # raises error if no tasks are set
    # returns a string with the list of tasks
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

# 1
reminder = Reminder.new
reminder.add("Clean kitchen")
reminder.remind_me # => "Clean kitchen"

# 2
reminder = Reminder.new
reminder.remind_me # raises error "No tasks have been set."

# 3
reminder = Reminder.new
reminder.add("Clean kitchen")
reminder.add("Meal prep")
reminder.remind_me # => "Clean the kitchen, Meal prep"

# 4
reminder = Reminder.new
reminder.add("") # raises error "Task cannot be an empty string."

# 5
reminder = Reminder.new
reminder.add("Clean kitchen")
reminder.add("Meal prep")
reminder.complete("Clean kitchen")
reminder.remind_me # => "Meal prep"

# 6
reminder = Reminder.new
reminder.complete("") # raises error "Task cannot be an empty string."

# 7
reminder = Reminder.new
reminder.complete("Do ironing") # raises error "Task has not been set."
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


