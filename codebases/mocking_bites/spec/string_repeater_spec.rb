require 'string_repeater'

RSpec.describe StringRepeater do
  it "repeats a string a number of times via terminal" do
    io = double :io

    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(io).to receive(:puts).with("Please enter a string").ordered
    expect(io).to receive(:gets).and_return("TWIX").ordered
    expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(io).to receive(:gets).and_return("10").ordered
    expect(io).to receive(:puts).with("Here is your result:")
    expect(io).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX")

    repeater = StringRepeater.new(io)
    repeater.run
  end

  it "raises an error when a number is not input" do
    io = double :io

    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(io).to receive(:puts).with("Please enter a string").ordered
    expect(io).to receive(:gets).and_return("TWIX").ordered
    expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(io).to receive(:gets).and_return("bear").ordered

    repeater = StringRepeater.new(io)
    expect { repeater.run }.to raise_error "Please enter a number"
  end

end