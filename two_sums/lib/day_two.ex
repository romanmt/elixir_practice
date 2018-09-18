defmodule DayTwo do
  @moduledoc """
  Given an array of integers, return indices of the two numbers such that they add up to a specific target.

  You may assume that each input would have exactly one solution, and you may not use the same element twice.
  """

  @doc """
  Finds the 2 elements in the list that add up to the target

  returns 'List containing indecies of operands'

  ## Examples

  iex> DayTwo.two_sum([2, 7, 8, 10], 9)
  [0, 1]

  """
  def two_sum(list, target) do
    two_sum list, target, 0
  end

  defp two_sum(list, target, start) do

    case find_partner(start, list, target)  do
      nil -> two_sum list, target, start + 1
      x   -> [start, x + start + 1]
    end
  end

  defp find_partner(start, list, target) do
    rest = Enum.slice list, start + 1, length(list)
    Enum.find_index(rest, fn x -> x == target - Enum.at list, start  end) 
  end

end
