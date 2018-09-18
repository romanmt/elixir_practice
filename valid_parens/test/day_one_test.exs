defmodule DayOneTest do
  use ExUnit.Case
  doctest DayOne

  test "valid parenthesis base case" do
    assert DayOne.valid_parenthesis("()") == true
  end

  test "valid parenthesis no match" do
    assert DayOne.valid_parenthesis("(()") == false
  end

  test "valid parenthesis with []" do
    assert DayOne.valid_parenthesis("[]") == true
  end

  test "valid parenthesis with [] no match" do
    assert DayOne.valid_parenthesis("[[]") == false
  end

  test "valid parenthesis with {}" do
    assert DayOne.valid_parenthesis("{}") == true
  end

  test "valid parenthesis with {} no match" do
    assert DayOne.valid_parenthesis("{{}") == false
  end

  test "valid parenthesis mixed" do
    assert DayOne.valid_parenthesis("({[]})") == true
  end

  test "valid parenthesis too many closed" do
    assert DayOne.valid_parenthesis("())") == false
  end

  test "valid parenthesis empty string" do
    assert DayOne.valid_parenthesis("") == true
  end

  #test "valid parenthesis incorrect order" do
  #  assert DayOne.valid_parenthesis("([)]") == false
  #end

end
