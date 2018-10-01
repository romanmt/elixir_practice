defmodule DayTwo do
  alias Data.Stack
  alias Data.Stack.Simple

  @moduledoc """
  Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

  An input string is valid if:

  Open brackets must be closed by the same type of brackets.
  Open brackets must be closed in the correct order.
  Note that an empty string is also considered valid.
  """

  @doc """
  Tests for valid combinations of open and close parens.

  Returns `boolean`.

  ## Examples

  iex> DayTwo.valid_parenthesis("([{}])")
  true

  iex> DayTwo.valid_parenthesis("([)")
  false

  """
  def valid_parenthesis(parens) do

    stack = Enum.reduce_while String.split(parens, ""), Simple.new, fn n, stack ->
      cond do
        n =~ ~r/\(|\[|\{/ -> {:cont, Stack.push(stack, n)}
        n =~ ~r/\)|\]|\}/ -> pop_match(n, stack)
        true              -> {:cont, stack}
      end
    end
    Data.empty?(stack)
  end

  defp pop_match(n, stack) do
    matches = %{ "}" => "{", ")" => "(", "]" => "[" }
    if Data.empty?(stack) do
      {:halt, Stack.push(stack, n)}
    else
      case matches[n] == Data.peek(stack) do
        true  -> {:cont, elem(Stack.pop(stack), 1)}
        false -> {:halt, Stack.push(stack, n)}
      end
    end
  end

end
