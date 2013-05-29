require_relative "./task.rb"

class List

  attr_reader :tasks, :total_tasks

  def initialize
    @tasks = []
    @total_tasks = 0
  end
  
  def total_tasks
    @total_tasks = @tasks.count
  end

  def add_task(description, priority)
    task = Task.new(description, priority)
    @tasks << task
  end
end
