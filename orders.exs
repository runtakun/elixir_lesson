
tax_rates = [ NC: 0.075, TX: 0.08 ]
orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00],
  [ id: 124, ship_to: :OK, net_amount:  35.50],
  [ id: 125, ship_to: :TX, net_amount:  24.00],
  [ id: 126, ship_to: :TX, net_amount:  44.80],
  [ id: 127, ship_to: :NC, net_amount:  25.00],
  [ id: 128, ship_to: :MA, net_amount:  10.00],
  [ id: 129, ship_to: :CA, net_amount: 102.00],
  [ id: 130, ship_to: :NC, net_amount:  50.00],
]

defmodule Orders do
  def order_list(rates, order_list) do
    for o <- order_list, do: Keyword.merge(o, [ total_amount: o[:net_amount] * (1.0 + Keyword.get(rates, o[:ship_to], 0.0)) ])
  end
end

# IO.puts Keyword.get(tax_rates, :CA, 1.0)

IO.inspect Orders.order_list(tax_rates, orders)
