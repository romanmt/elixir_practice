defmodule DayThreeTest do

  use ExUnit.Case, async: true
  doctest DayThree

  test "Two sum base case" do
    assert DayThree.two_sum([2, 7, 10, 13], 9) == [0, 1]
  end

  test "Two sum not first" do
    assert DayThree.two_sum([1, 2, 7, 10], 9) == [1 ,2]
  end

  test "Two sum not consecutive" do
    assert DayThree.two_sum([2, 5, 7, 10], 9) == [0, 2]
  end

  test "Two sum not sorted" do
    assert DayThree.two_sum([10, 7, 11, 2, 8], 9) == [1, 3]
  end

end

