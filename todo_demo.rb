require 'rubygems'
require 'bundler/setup'

require "./models/task.rb"
require "./models/list.rb"

demo_list = List.new()
puts "Welcome!"
while true
  if demo_list.total_tasks > 0
    puts "\nTo do list:"
    puts demo_list.to_s
    puts "Enter 'N' to add a new task, 'E' to edit a task, or 'Q' to quit."
  else
    puts "Your list is currently empty."
    puts "Enter: 'N' to add a new task or 'Q' to quit."
  end
  entry = gets.chomp().capitalize
  case entry
  when "N"
    puts "Enter a description of the task."
    desc = gets.chomp()
    puts "Enter a priority of 1-5 with five being the most important.  You can optionally leave this blank."
    priority = gets.chomp()
    demo_list.add_task(desc, priority.to_i)
    puts "Your task was added."
  when "E"
    puts "Enter the number for the task you want to edit." 
    num = gets.chomp().to_i
    if num >= 0 && num < demo_list.total_tasks
      puts "Do you want to mark this task complete? (Y/N)"
      if gets.chomp().capitalize == "Y"
        puts "This doesn't do anything yet."
      end
    else
      puts "Invalid entry."
    end
  when "Q"
    break
  else
    puts "Invalid entry."
    continue
  end

end
