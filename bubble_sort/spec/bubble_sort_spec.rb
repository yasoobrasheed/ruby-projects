require('./lib/bubble_sort.rb')

describe('BubbleSort') do
    describe('bubble_sort') do
        it ('correctly bubble sorts') do
            bubble_sort = BubbleSort.new
            expect(bubble_sort.bubble_sort([4,3,78,2,0,2])).to eq([0, 2, 2, 3, 4, 78])
        end
    end
end