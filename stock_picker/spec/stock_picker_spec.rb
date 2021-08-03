require('./lib/stock_picker.rb')

describe('StockPicker') do
    describe('stock_picker') do
        it ('finds best days to buy and sell stock (I)') do
            stock_picker = StockPicker.new
            expect(stock_picker.stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1, 4])
        end
        it ('finds best days to buy and sell stock (II)') do
            stock_picker = StockPicker.new
            expect(stock_picker.stock_picker([7,1,5,3,6,4])).to eq([1, 4])
        end
        it ('finds no days to buy and sell stock') do
            stock_picker = StockPicker.new
            expect(stock_picker.stock_picker([7,6,4,3,1])).to eq([0, 0])
        end
    end
end