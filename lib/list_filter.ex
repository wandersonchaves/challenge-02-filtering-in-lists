defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ListFilter.hello()
      :world

  """
  def hello do
    :world
  end

  def call(list) do
    list
    |> Enum.filter(&is_number_string/1)
    |> Enum.map(&String.to_integer/1)
    |> Enum.filter(&is_odd/1)
    |> length()
  end

  defp is_number_string(element) do
    String.match?(String.trim(element), ~r/^-?\d+$/)
  end

  defp is_odd(element) do
    rem(element, 2) == 1
  end
end
