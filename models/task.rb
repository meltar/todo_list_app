class Task

  attr_reader :desc, :priority, :complete
  
  def initialize(task_desc, priority = 1)
    @desc = task_desc 
    if priority < 1 || priority > 5
      priority = 1
    end
    @priority = { 5 => :five, 4 => :four, 3 => :three, 2 => :two, 1 => :one }[priority]
    @complete = false
  end

  def complete?
    @complete
  end

  def set_completed
    @complete = true
  end

  def priority_type
    { five: "*****", four: "****", three: "***", two: "**", one: "*" }[@priority]
  end

  def to_s
    if complete?
      "X - #{desc}"
    else
      "#{priority_type} - #{@desc}"
    end
  end
end

