require 'rubygems'
require 'bundler/setup'

require "./models/task.rb"
require "./models/list.rb"

demo_list = List.new()
puts "Welcome!"
while true
  if demo_list.total_tasks > 0
    puts "To do list:"
    puts demo_list.to_s
  else
    puts "Your list is currently empty."
  end
  #puts "Enter: 'N' to add a new task, 'E' to edit a task, or 'Q' to quit."
  puts "Enter: 'N' to add a new task or 'Q' to quit."
  entry = gets.chomp().capitalize
  case entry
  when "N"
    puts "Enter a description of the task."
    desc = gets.chomp()
    puts "Enter a priority of 1-5 with five being the most important.  You can optionally leave this blank."
    priority = gets.chomp()
    demo_list.add_task(desc, priority.to_i)
    puts "Your task was added."
  #when "E"
  when "Q"
    break
  end

end
