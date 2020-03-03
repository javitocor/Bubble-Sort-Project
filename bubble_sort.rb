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

#Bubble_sort_by
def bubble_sort_by(array)
    array_length = array.length
    array_length.times do |n|
        (array_length - n - 1).times do |m|             
            yield_var = yield(array[m], array[m + 1])           
            if yield_var > 0
                    first_num = array[m]
                    second_num = array[m + 1]
                    array[m] = second_num
                    array[m + 1] = first_num
            end
        end
    end
    puts array
end