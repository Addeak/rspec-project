require 'task_formatter'

RSpec.describe TaskFormatter do
  it "returns a formatted string of a incomplete task" do
    task = double :task, title: "Walk the dog", complete?: false
    formatted_task = TaskFormatter.new(task)
    expect(formatted_task.format).to eq "- [ ] Walk the dog"
  end

  it "returns a formatted string of a complete task" do
    task = double :task, title: "Walk the dog", complete?: true
    formatted_task = TaskFormatter.new(task)
    expect(formatted_task.format).to eq "- [x] Walk the dog"
  end



end