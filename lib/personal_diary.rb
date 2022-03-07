def make_snippet(str)
  arr = str.split(" ")
  new_arr = arr.select.with_index { |word, i| i < 5 }
  new_arr.join(" ") + "..."
end

def count_words(str)
  str.split.count
end