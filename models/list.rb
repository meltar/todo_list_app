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
    @tasks = @tasks.sort_by { |t| t.priority }.reverse
  end

  def reset
    @tasks = []
  end

  def to_s
    #sorted = @tasks.sort_by { |t| t.priority }.reverse
    task_list = ""
    #sorted.each { |t| task_list = task_list + "#{sorted.index(t)}: #{t.to_s}\n" }
    @tasks.each { |t| task_list = task_list + "#{@tasks.index(t)}: #{t.to_s}\n" }
    task_list
  end
end
