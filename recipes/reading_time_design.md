As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

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


#

```