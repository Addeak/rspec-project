require 'grammar'

RSpec.describe "grammar method" do
  it "returns text with correct punctuation" do
    result = grammar("hello, my name is stephanie")
    expect(result).to eq "Hello, my name is stephanie."
  end

  it "returns an empty string" do
    result = grammar("")
    expect(result).to eq ""
  end

  it "returns string with missing full-stop" do 
    result = grammar("Hello, my name is Adam")
    expect(result).to eq "Hello, my name is Adam."
  end

  it "returns string with missing capital letter" do 
    result = grammar("adam's laptop is grey.")
    expect(result).to eq "Adam's laptop is grey."
  end

  it "does not replace question marks" do 
    result = grammar("What colour is your laptop?")
    expect(result).to eq "What colour is your laptop?"
  end

  it "does not replace exclamation mark but adds capital letter" do
    result = grammar("get off my jacket!")
    expect(result).to eq "Get off my jacket!"
  end 
end 