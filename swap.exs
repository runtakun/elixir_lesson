
defmodule Swapper do
  def swap([]), do: []
  def swap([a, b | tail]), do: [b, a | swap(tail)]
  def swap([_]), do: IO.puts "Can't swap an list with an odd number of elements'"
end
