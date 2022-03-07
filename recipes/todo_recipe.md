As a user
So that I can keep track of my tasks
I want to check if a text includes the string @TODO.

```ruby
result = todo_tracker(text)

*text is a string of text, which may or may not include a to-do task. "Today I need to @TODO: clean the car."
*result is true or false depending on whether text includes a task. true

```

```ruby
# 1
todo_tracker("Today I need to @TODO: clean the car.")
# => true

# 2 
todo_tracker("I need to meal prep.")
# => false

# 3
todo_tracker("@TODO - write novel.")
# => true
```