
defmodule MyList do
  def reduce([], value, _) do
    value
  end

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], value, _) do
    value
  end

  def mapsum([head | tail], value, func) do
    mapsum(tail, head + func.(head, value), func)
  end

  def max(list) do
    _max(list, -999999999999999)
  end

  defp _max([], value) do
    value
  end

  defp _max([ head | tail ], value) when head > value do
    _max(tail, head)
  end

  defp _max([ _head | tail ], value) do
    _max(tail, value)
  end

  def caesar([], _n) do
    []
  end

  def caesar([ head | tail ], n) when head + n > ?z do
    [head + n - 26 | caesar(tail, n)]
  end

  def caesar([ head | tail ], n) do
    [head + n | caesar(tail, n)]
  end

end
