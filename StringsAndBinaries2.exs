
defmodule Strings do
  def anagram?(word1, word2) do
    word1 == Enum.reverse(word2)
  end
end
