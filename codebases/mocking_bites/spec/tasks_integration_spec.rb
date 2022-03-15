require "task_list"
require "task"
require 'task_formatter'

RSpec.describe "tasks integration" do
  it "adds tasks to a list" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    task_1.mark_complete
    task_2.mark_complete
    expect(task_list.all_complete?).to eq true
  end

  it "returns a formatted string of an incomplete task" do
    task = Task.new("Get a life")
    formatter = TaskFormatter.new(task)
    expect(formatter.format).to eq "- [ ] Get a life"
  end

  it "returns a formatted string of a complete task" do
    task = Task.new("Get a life")
    task.mark_complete
    formatted_task = TaskFormatter.new(task)
    expect(formatted_task.format).to eq "- [x] Get a life"
  end
end
