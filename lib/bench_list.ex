defmodule BenchList do
  @moduledoc """
  Documentation for BenchList.
  """
  def head_tail(list, results \\ [])
  def head_tail([], results), do: results
  def head_tail([head | tail], results) when is_integer(head) do
    results = [process(head) | results]
    head_tail(tail, results)
  end

  def process(num) when is_integer(num) do
    {num * 3}
  end

  # Don't need to match on head tail but i wanted to do so for parity to head_tail()
  def map_list([head | _tail] = list) when is_integer(head) do
    Enum.map(list, &process/1)
  end
end
