
defmodule Strings do
  
  def is_ascii?(s) do
    Enum.all?(s, &(&1 >= ?\s and &1 <= ?~))
  end

  def anagram?(word1, word2) do
    Enum.sort(word1) == Enum.sort(word2)
  end

end
