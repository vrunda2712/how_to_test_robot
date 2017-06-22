require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_vintage_robot_needing_repairs_sent_to_station_1
    # arrange
    robot = Robot.new
      robot.needs_repairs = true
      robot.foreign_model = true
      robot.vintage_model = true
    # act
    sent_to_1 = robot.station
    # assert
    assert_equal(sent_to_1, 1)
  end

  def test_that_foreign_robot_neeing_repairs_sent_to_station_1
    # arrange
    robot = Robot.new
      robot.needs_repairs = true
      robot.foreign_model = true
    # act
    sent_to_1 = robot.station
    # assert
    assert_equal(sent_to_1, 1)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    robot = Robot.new
      robot.needs_repairs = true
      robot.vintage_model = true
    # act
    sent_to_2 = robot.station
    # assert
    assert_equal(sent_to_2, 2)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # arrange
    robot = Robot.new
      robot.needs_repairs = true
    # act
    sent_to_3 = robot.station
    # assert
    assert_equal(sent_to_3, 3)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    # arrange
    robot = Robot.new
    # act
    sent_to_4 = robot.station
    # assert
    assert_equal(sent_to_4, 4)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    # arrange
    robot = Robot.new
      robot.todos = []
    # act
    empty_priorities = robot.prioritize_tasks
    # assert
    assert_equal(empty_priorities, -1)
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    # arrange
    robot = Robot.new
      robot.todos = [1, 2, 3] # can be string as well
    # act
    max_todo = robot.prioritize_tasks
    # assert
    assert_equal(max_todo, 3)
  end

  def test_workday_on_day_off_returns_true
    # arrange
    robot = Robot.new
      robot.day_off = "Wednesday"
    # act
    work_today = robot.workday?("Tuesday")
    # assert
    assert_equal(work_today, true)
  end

  def test_workday_not_day_off_returns_false
    # arrange
    robot = Robot.new
      robot.day_off = "Wednesday"
    # act
    work_today = robot.workday?("Wednesday")
    # assert
    assert_equal(work_today, false)
  end

end
