require 'reminder'

RSpec.describe Reminder do
  context "given a string" do
    it "returns the string" do
      reminder = Reminder.new
      reminder.add("Clean kitchen")
      expect(reminder.remind_me).to eq "Clean kitchen"
    end
  end

  context "given no tasks" do
    it "raises an error" do
      reminder = Reminder.new
      expect { reminder.remind_me }.to raise_error "No tasks have been set."
    end
  end

  context "given several tasks" do
    it "returns a list with all tasks" do
      reminder = Reminder.new
      reminder.add("Clean kitchen")
      reminder.add("Meal prep")
      expect(reminder.remind_me).to eq "Clean kitchen, Meal prep"
    end
  end

  context "given an empty string" do
    it "raises an error" do
      reminder = Reminder.new
      expect { reminder.add("") }.to raise_error "Task cannot be an empty string."
    end
  end
end