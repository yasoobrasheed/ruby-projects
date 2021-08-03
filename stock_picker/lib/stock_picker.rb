class StockPicker
    def stock_picker(array)
        # keep track of the max profit
        max_profit = 0
        max_days = [0, 0]
        # keep track of the local minimum
        local_min_index = 0
        local_min = array.max
        # loop through the stock prices
        array.each_with_index { |price, index|
            # if number is smaller than the previous, reset local min
            if (price < local_min)
                local_min = price
                local_min_index = index
                next
            end

            # if number is bigger than max, calculate new profit and see if great than max profit
            todays_profit = price - local_min
            if (todays_profit > max_profit)
                max_profit = todays_profit
                max_days = [local_min_index, index]
            end
        }
        max_days
    end
end
