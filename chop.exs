
defmodule Chop do

  def guess(actual, range) do
    first..last = range
    mid = div(first + last, 2)
    IO.puts "Is it #{mid}"
    decide(actual, range, mid)
  end

  def decide(actual, _, expected) when actual == expected do
    IO.puts expected
  end

  def decide(actual, range, expected) when actual < expected do
    first..last = range
    guess(actual, first..expected - 1)
  end

  def decide(actual, range, expected) do
    first..last = range
    guess(actual, expected+1..last)
  end

end

Chop.guess(273, 1..1000)
