str_fz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

# IO.puts(str_fz.(0, 0, 1))
# IO.puts(str_fz.(0, 1, 2))
# IO.puts(str_fz.(1, 0, 2))
# IO.puts(str_fz.(1, 2, 3))

fizz_buzz = fn (n) -> str_fz.(rem(n, 3), rem(n, 5), n) end

IO.puts(fizz_buzz.(10))
IO.puts(fizz_buzz.(11))
IO.puts(fizz_buzz.(12))
IO.puts(fizz_buzz.(13))
IO.puts(fizz_buzz.(14))
IO.puts(fizz_buzz.(15))
IO.puts(fizz_buzz.(16))
