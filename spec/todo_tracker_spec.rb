require 'todo_tracker'

RSpec.describe "todo_tracker method" do
  it "return true if @TODO is present" do
    result = todo_tracker("Today I need to @TODO: clean the car.")
    expect(result).to eq true
  end

  it "return false if @TODO is not present" do
    result = todo_tracker("I need to meal prep.")
    expect(result).to eq false
  end

  it "return true if @TODO is present" do
    result = todo_tracker("@TODO - write novel.")
    expect(result).to eq true
  end
end