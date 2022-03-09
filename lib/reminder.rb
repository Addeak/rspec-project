class Reminder
  def initialize
    @tasks = []
  end

  def add(task)
    fail "Task cannot be an empty string." if task == ""
    @tasks << task
  end

  def remind_me
    fail "No tasks have been set." if @tasks == []
    @tasks.join(", ")
  end
end