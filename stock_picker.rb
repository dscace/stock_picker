def stock_picker( stock_price_array )
	best_profit = 0 
	low_buy = 0
	high_sell = 0
	
	stock_price_array.each_with_index do |buy_price, buy_day|
		stock_price_array.each_with_index do |sell_price, sell_day|
			if buy_day < sell_day
				profit = sell_price - buy_price
				if profit > best_profit
						best_profit = profit
						low_buy = buy_day
						high_sell = sell_day
				end
			end
		end
	end
    puts "The best day to buy is #{low_buy} and to sell is #{high_sell}."
    puts "You would make $#{best_profit}."

end

stock_picker([3,13,8,5,7,12])