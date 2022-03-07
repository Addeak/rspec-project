require 'reading_time'

RSpec.describe "reading_time method" do

  it "estimates reading time of a text" do
    result = reading_time("Once upon a time, there was a princess locked in a castle.")
    expect(result).to eq "3.6 secs"
  end

  it "estimates reading time of a text" do
    result = reading_time("")
    expect(result).to eq "0 secs"
  end

  it "estimates reading time of a text" do
    result = reading_time("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    expect(result).to eq "20.7 secs"
  end

end