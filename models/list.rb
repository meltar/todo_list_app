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

  def add_task(description, priority = 0)
    task = Task.new(description, priority)
    @tasks << task
  end

  def reset
    @tasks = []
  end

  def to_s
    sorted = @tasks.sort_by { |t| t.priority }
    sorted.inspect
  end
end
