require 'rspec'
require_relative "../models/task"

describe Task do
  it "should take a description of the task when created" do
    task = Task.new("Vacuum")
    task.desc.should eq("Vacuum")
  end

  it "should take an optional priority" do
    task = Task.new("Wash dishes", 3)
    task.priority.should eq(3)
  end

  it "should set the priority to 1 when none was given" do
    task = Task.new("Empty trash")
    task.priority.should eq(1)
  end

  it "should set an invalid priority to 1" do
    task = Task.new("Do laundry", 11)
    task.priority.should eq(1)
  end

  it "should allow the task to be marked complete" do
    task = Task.new("Finish homework", 5)
    task.complete?.should be(false)
    task.set_completed 
    task.complete?.should be(true)
  end

  it "should have a to_s showing the priority in stars" do
    task = Task.new("Feed cats", 3)
    task.to_s.should eq("*** - Feed cats")
  end

end
