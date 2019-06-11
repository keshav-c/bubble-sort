def bubble_sort(array)
    array.size.downto(1) do |len|
        1.upto(len-1) do |idx|
            if array[idx-1] > array[idx]
                array[idx-1], array[idx] = array[idx], array[idx-1]
            end
        end
    end
    array
end

# test on integer array
puts "#{bubble_sort([4,3,78,2,0,2]).join(", ")}"
# => [0,2,2,3,4,78]