require 'rspec'
require_relative "../models/list"

describe List do
  it "should keep a list of tasks" do
    list = List.new
    list.tasks.count.should eq(0)
  end

  it "should know the number of tasks in the list" do
    list = List.new
    list.total_tasks.should eq(0)
  end
   
  it "should add a new task" do
    list = List.new
    total = list.total_tasks
    list.add_task("Empty trash", 2)
    list.total_tasks.should eq(total + 1)
  end

end
