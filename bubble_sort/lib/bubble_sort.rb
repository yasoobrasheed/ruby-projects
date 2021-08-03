class BubbleSort
    def bubble_sort(array)
        for i in (0...array.length() - 1) do
            for j in (0...array.length() - i - 1) do
                if (array[j] > array[j + 1])
                    array[j], array[j + 1] = array[j + 1], array[j]
                end
            end
        end
        array
    end
end
