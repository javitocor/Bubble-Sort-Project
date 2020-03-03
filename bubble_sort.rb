#Bubble Sort
def bubble_sort(array)
    array_length = array.length
    array_length.times do |n|
        (array_length - n - 1).times do |m|
            if array[m] > array[m + 1]
                first_num = array[m]
                second_num = array[m + 1]
                array[m] = second_num
                array[m + 1] = first_num
            end
        end
    end
    return array
end
