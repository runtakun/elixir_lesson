defmodule Strings do
  def center(str_list) do
    max = _max_string(str_list)
    print_center(str_list, max)
  end

  defp _max_string(str_list) do
    str_list
    |> Enum.map(&String.length(&1))
    |> Enum.max
  end

  def print_center(str_list, length) do
    str_list
    |> Enum.each(&_print_center(&1, length))
  end

  defp _print_center(str, length) do
    padding = div(length - String.length(str), 2)
    IO.puts ~s(#{String.duplicate("\s", padding)}#{str}#{String.duplicate("\s", padding)})
  end

end
