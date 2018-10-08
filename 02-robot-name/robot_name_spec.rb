gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'robot_name'

describe "Robot Name" do
  COMMAND_QUERY = <<-MSG
  Command/Query Separation:
  Query methods should generally not change object state.
  MSG

  NAME_REGEXP = /^[A-Z]{2}\d{3}$/

  it "Must have a name" do
    # `must_match` is looking to verify the format of the name
    # see the README for specs regarding name format
    expect(Robot.new.name).must_match NAME_REGEXP
  end

  it "Check that the name sticks" do
    robot = Robot.new
    name  = robot.name

    expect(robot.name).must_equal robot.name
    expect(robot.name).must_equal name
  end

  it "Check different robots have different names" do
    # there is a very, very small probability of name collision here
    # ensuring the name is globally unique is beyond the scope of this exercise

    expect(Robot.new.name).wont_equal Robot.new.name

  end

  it "Check reset name" do
    robot = Robot.new
    name = robot.name

    robot.reset
    name2 = robot.name

    expect(name).wont_equal name2
    expect(name2).must_equal robot.name
    expect(name2).must_match NAME_REGEXP

  end
end
