As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

```ruby
correct_text = grammar(text)

* text is a string of any length. "hello, my name is stephanie".
* correct_text is the edited version of the text with correct punctuation. "Hello, my name is stephanie."
```

```ruby
# 1
grammar("hello, my name is stephanie")
# => "Hello, my name is stephanie."

# 2 
grammar("")
# => ""

# 3 
grammar("Hello, my name is Adam")
# => "Hello, my name is Adam."

# 4 
grammar("adam's laptop is grey.")
# => "Adam's laptop is grey."

# 5
grammar("What colour is your laptop?")
# => "What colour is your laptop?"

# 6
grammar("get off my jacket!")
# => "Get off my jacket!"

```


<!-- 
```ruby
estimated_time = reading_time(text)

*text is a string of any possible length. "Once upon a time, there was a princess locked in a castle."
*estimated_time is a string based on length of text and reading speed of 200 words a minute. "3.6 secs"
```

```ruby
# 1
reading_time("Once upon a time, there was a princess locked in a castle.")
# => "3.6 secs"

# 2
reading_time("")
# => "0 secs"

# 3
reading_time("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# => "20.7 secs")


# -->
