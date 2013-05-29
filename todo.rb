require 'rubygems'
require 'bundler/setup'

require "./models/task.rb"
require "./models/list.rb"

demo_list = List.new()
puts "Welcome!"
puts "Your list is currently empty.  Would you like to add a task? (Y/N)"
until gets.chomp().capitalize != "Y"
  puts "Enter a description of the task."
  desc = gets.chomp()
  puts "Enter a priority 1-5 with five being the most important."
  priority = gets.chomp()
  puts "Your task, \"#{desc},\" has a priority of #{priority}.  Do you want to save it? (Y/N)"
  result = gets.chomp().capitalize
  if result == "Y"
    demo_list.add_task(desc, priority.to_i) 
    puts "Your task was added."
  else 
    puts "Task not saved."
  end
  puts "Would you like to add another task? (Y/N)"
end

if demo_list.total_tasks > 0
  puts "To do list:"
  puts demo_list.to_s
end
