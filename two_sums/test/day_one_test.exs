defmodule DayOneTest do
  use ExUnit.Case
  doctest DayOne

  test "two sum base case" do
    assert DayOne.two_sum([2, 7, 11, 15], 9) == [0, 1]
  end

  test "two sum not consecutive" do
    assert DayOne.two_sum([2, 3, 7, 10], 9) == [0, 2]
  end

  test "two sum not first" do
    assert DayOne.two_sum([1, 2, 5, 7, 10], 9) == [1, 3]
  end

  test "two sum last 2" do
    assert DayOne.two_sum([1, 2, 3, 4, 5], 9) == [3, 4]
  end

  test "two sum unsorted" do
    assert DayOne.two_sum([10, 7, 2, 1], 9) == [1, 2]
  end

end

