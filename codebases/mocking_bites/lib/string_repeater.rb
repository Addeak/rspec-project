class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    string = get_string
    @io.puts "Please enter a number of repeats"
    repeats = get_number
    @io.puts "Here is your result:"
    @io.puts "#{string * repeats}"

  end

  private

  def get_string
    @io.gets.chomp
  end

  def get_number
    input = @io.gets
    return input.to_i if input.to_i.to_s == input
    fail "Please enter a number"
  end

end

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run