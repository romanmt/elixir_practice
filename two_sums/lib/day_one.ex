defmodule DayOne do
  @moduledoc """
  Documentation for TwoSums.
  """

  defp find_in(subject, vector) do
    Enum.find_index(vector, fn x -> x == subject end) 
  end

  defp two_sum(start, [head | tail], target) do
    case (find_in target - head, tail) do
      nil -> two_sum start + 1, tail, target
      x -> [start, start + x + 1]
    end
  end

  def two_sum(vector, target) do
    two_sum 0, vector, target
  end

end

