defmodule Strings do
  def parse_text() do
    "StringsAndBinaries7.txt"
    |> File.stream!
    |> Stream.map( &String.trim(&1) )
    |> Stream.map( &String.split(&1, ",") )
    |> Stream.map( fn([_, _, net_amount]) -> String.to_float(net_amount) * 1.05 end )
    |> Enum.to_list
    |> Enum.each( &IO.puts &1 )
  end
end
