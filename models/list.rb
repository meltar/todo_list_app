require_relative './task'

class List

  attr_reader :tasks, :total_tasks, :total_incomplete, :total_complete

  def initialize
    @tasks = []
    @total_tasks = 0
  end
  
  def total_tasks
    @total_tasks = @tasks.count
  end

  def add_task(description, priority)
  end
end
