defmodule DayTwoTest do
  use ExUnit.Case
  doctest DayTwo

  test "valid parenthesis base case" do
    assert DayTwo.valid_parenthesis "()" 
  end

  test "valid parenthesis invalid match" do
    refute DayTwo.valid_parenthesis "(" 
  end

  test "valid parenthesis with []" do
    assert DayTwo.valid_parenthesis "[]" 
  end

  test "valid parenthesis with {}" do
    assert DayTwo.valid_parenthesis "{}" 
  end

  test "valid parenthesis mixed" do
    assert DayTwo.valid_parenthesis "([{}])"
  end

  test "valid parenthesis out of order" do
    refute DayTwo.valid_parenthesis "([)]"
  end

  test "valid parenthesis too many closed" do
    refute DayTwo.valid_parenthesis ")"
  end

end
