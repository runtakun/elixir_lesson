
defmodule Strings do
  def printable?([]) do
    true
  end

  def printable?([ head | tail ]) do
    head >= ?\s && head <= ?~ && printable?(tail)
  end
end
