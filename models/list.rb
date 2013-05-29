require_relative "./task.rb"

class List

  attr_reader :tasks

  def initialize
    @tasks = []
  end
  
  def total_tasks
    @tasks.count
  end

  def add_task(description, priority = 1)
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
