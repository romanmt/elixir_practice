defmodule DayFourTest do
  use ExUnit.Case

  doctest DayFour

  test "Two sum base case" do
    assert DayFour.two_sum([2, 7, 8, 10], 9) == [0, 1]
  end

  test "Two sum not first" do
    assert DayFour.two_sum([1, 2, 7, 10], 9) == [1, 2]
  end

  test "Two sum not consecutive" do
    assert DayFour.two_sum([1, 2, 4, 7, 10], 9) == [1, 3]
  end

  test "Two sum last" do
    assert DayFour.two_sum([1, 2, 7], 9) == [1, 2]
  end

  test "Two sum unordered" do
    assert DayFour.two_sum([10, 2, 5, 7, 3], 9) == [1, 3]
  end
end
