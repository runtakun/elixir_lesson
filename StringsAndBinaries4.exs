defmodule Parse do
  
  def calculate(str) do
    {num1, rest} = parse_number(str)
    rest = skip_spaces(rest)
    {op, rest} = parse_operator(rest)
    rest = skip_spaces(rest)
    {num2, _} = parse_number(rest)
    op.(num1, num2)
  end

  def parse_number(str), do: _number_digits(str, 0)
  defp _number_digits([], value), do: { value, [] }
  defp _number_digits([digit | tail], value) when digit in '1234567890' do
    _number_digits(tail, value * 10 + digit - ?0)
  end
  defp _number_digits(str, value) do
    { value, str }
  end

  def skip_spaces(str), do: _skip_spaces(str)
  defp _skip_spaces([ space | tail ]) when space == ?\s do
    tail
  end
  defp _skip_spaces(str), do: str

  def parse_operator([?+ | rest]), do: { &(&1 + &2), rest }
  def parse_operator([?- | rest]), do: { &(&1 - &2), rest }
  def parse_operator([?* | rest]), do: { &(&1 * &2), rest }
  def parse_operator([?/ | rest]), do: { &(&1 / &2), rest }

end
