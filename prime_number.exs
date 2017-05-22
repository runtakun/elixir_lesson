
defmodule MyList do

  def span(from, to) do
    _span([], from, to)
  end

  defp _span(list, value, to) when value > to do
    list
  end

  defp _span(list, value, to) do
    _span(list ++ [value], value + 1, to)
  end

end

