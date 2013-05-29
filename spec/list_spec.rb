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

  it "should return the list of all tasks" do
    list = List.new
    list.add_task("Task one", 1)
    list.add_task("Task two", 2)
    expect(list.to_s).to include("Task one")
    expect(list.to_s).to include("Task two")
  end

  it "should be able to be reset" do
    list = List.new
    list.add_task("Vacuum")
    list.total_tasks.should eq(1)
    list.reset
    list.total_tasks.should eq(0)
  end

  xit "should let you mark a task in the list complete" do
    list = List.new
    list.add_task("Wash dishes", 5)

  end
end
