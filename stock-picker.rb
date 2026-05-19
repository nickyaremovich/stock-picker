stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  best_profit = 0
  best_days = []
  prices.each_with_index do |buy, index|
    (index + 1...prices.length).each do |sell|
      profit = prices[sell] - buy
      if profit > best_profit
        best_profit = profit
        best_days = [index, sell]
      end
    end
  end
  best_days
end

p stock_picker(stocks)