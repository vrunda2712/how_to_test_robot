require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_vintage_robot_needing_repairs_sent_to_station_1
    # arrange
    robot = Robot.new
      robot.needs_repairs = 1
      robot.foreign_model = 1
      robot.vintage_model = 1
    # act
    sent_to_1 = robot.station
    # assert
    assert_equal(sent_to_1, 1)
  end

  def test_that_foreign_robot_neeing_repairs_sent_to_station_1
    # arrange
    robot = Robot.new
      robot.needs_repairs = 1
      robot.foreign_model = 1
    # act
    sent_to_1 = robot.station
    # assert
    assert_equal(sent_to_1, 1)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    robot = Robot.new
      robot.needs_repairs = 1
      robot.vintage_model = 1
    # act
    sent_to_2 = robot.station
    # assert
    assert_equal(sent_to_2, 2)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # arrange
    robot = Robot.new
      robot.needs_repairs = 1
    # act
    sent_to_3 = robot.station
    # assert
    assert_equal(sent_to_3, 3)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    skip
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    skip
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_on_day_off_returns_true
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_not_day_off_returns_false
    skip
    # arrange

    # act

    # assert
  end

end
