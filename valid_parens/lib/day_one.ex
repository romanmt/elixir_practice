defmodule DayOne do
  @moduledoc """
  Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

  An input string is valid if:

  Open brackets must be closed by the same type of brackets.
  Open brackets must be closed in the correct order.
  Note that an empty string is also considered valid.
  """

  defp counter(x, acc) do
    cond do
      x =~ ~r/\(|\[|\{/ -> acc + 1
      x =~ ~r/\)|\]|\}/ -> acc - 1
      true -> acc
    end
  end

  @doc """
  Tests for valid combinations of open and close parens.

  Returns `boolean`.

  ## Examples

  iex> DayOne.valid_parenthesis("([])")
  true

  """
  def valid_parenthesis(str) do
    Enum.reduce(String.split(str, ""), 0, &counter/2) == 0
  end

end
