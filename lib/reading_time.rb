def reading_time(str)
  time = str.split.count * 0.3
  return "#{time.ceil(1)} secs"
end