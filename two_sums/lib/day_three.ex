defmodule DayThree do
  @moduledoc """
  Given an array of integers, return indices of the two numbers such that they add up to a specific target.

  You may assume that each input would have exactly one solution, and you may not use the same element twice.
  """

  @doc """
  Finds the 2 elements in the list that add up to the target

  returns 'List containing indecies of operands'

  ## Examples

    iex> DayThree.two_sum([2, 7, 8, 10], 9)
    [0, 1]

  """
  def two_sum(list, target) do
    two_sum(list, target, 0)
  end

  defp two_sum(list, target, start) do

    {_, right} = Enum.split(list, start + 1)

    case Enum.find_index(right, fn x -> x == target - Enum.at(list, start) end) do
      nil -> two_sum(list, target, start + 1)
      x   -> [start, x + start  + 1]
    end
  end

end
