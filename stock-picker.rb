stocks = [70,43,26,39,15,38,36,41,10]

def stock_picker(prices)
  lowest_price = prices[0]
  index_lowest = 0
  profit = 0
  best_days = []
  prices.each_with_index do |price, index|
    if lowest_price > price
      lowest_price = price
      index_lowest = index
    end
    if price - lowest_price > profit
      profit = price - lowest_price
      best_days = [index_lowest, index]
      
    end
    puts profit
  end
  best_days
  
end

p stock_picker(stocks)