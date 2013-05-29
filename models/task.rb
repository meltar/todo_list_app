class Task

  attr_reader :desc, :priority, :complete
  
  def initialize(task_desc, priority = 1)
    @desc = task_desc 
    if priority < 1 || priority > 5
      @priority = 1
    else
      @priority = priority
    end
    @complete = false
  end

  def complete?
    @complete
  end

  def set_completed
    @priority = 0
    @complete = true
  end

  def priority_type
    stars = ""
    @priority.times do 
      stars = stars + '*'
    end
    stars
  end

  def to_s
    if complete?
      "X - #{desc}"
    else
      "#{priority_type} - #{@desc}"
    end
  end
end

