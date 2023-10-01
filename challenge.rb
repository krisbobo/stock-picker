def stock_picker(prices)
  max_profit = 0
  buy, sell = 0, 0

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day + 1 ..-1].each_with_index do |sell_price, sell_day|
      if sell_price - buy_price > max_profit
        max_profit = sell_price - buy_price
        buy, sell = buy_day, sell_day + buy_day + 1
      end
    end
  end

  max_profit > 0 ? [buy, sell] : nil
end

puts stock_picker([1,3,6,9,15,8,6,1,10])
