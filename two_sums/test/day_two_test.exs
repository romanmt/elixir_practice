defmodule DayTwoTest do
  use ExUnit.Case
  doctest DayTwo

  test "two sum base case" do
    assert DayTwo.two_sum([2, 7, 8, 10], 9) == [0, 1]
  end

  test "two sum not first" do
    assert DayTwo.two_sum([1, 2, 7, 10], 9) == [1, 2]
  end

  test "two sum last" do
    assert DayTwo.two_sum([0, 1, 2, 7], 9) == [2, 3] 
  end

  test "two sum not consecutive" do
    assert DayTwo.two_sum([1, 2, 4, 5, 7], 9) == [1, 4]
  end

  test "two sum not ordered" do
    assert DayTwo.two_sum([10, 7, 1, 2, 4], 9) == [1, 3]
  end
end
