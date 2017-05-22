
defmodule Enum2 do
  def all?([], f) do
    true
  end

  def all?([head | tail], f) do
    f.(head) && all?(tail, f)
  end

  def each([], f) do
    []
  end

  def each([head | tail], f) do
    [f.(head) | each(tail, f)]
  end

  def filter([], _fun), do: []
  def filter([ head | tail ], fun) do
    if fun.(head) do
      [ head | filter(tail, fun) ]
    else
      filter(tail, fun)
    end
  end

  def flatten([]) do
    []
  end

  def flatten([head | tail]) do
    flatten(head) ++ flatten(tail)
  end

  def flatten(head) do
    [head]
  end
end
