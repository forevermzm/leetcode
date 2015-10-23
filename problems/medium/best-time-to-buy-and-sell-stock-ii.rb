# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  total = 0
  prices.each_cons( 2 ) do | price, next_price |
    total += next_price - price if next_price > price
  end
  total
end
