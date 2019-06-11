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


def bubble_sort_by(array)
    array.size.downto(1) do |len|
        1.upto(len-1) do |idx|
        	test = yield(array[idx-1], array[idx])
            if test > 0
                array[idx-1], array[idx] = array[idx], array[idx-1]
            end
        end
    end
    array
end

# test on integer array
p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

# test on string array
var = ["hi","hello","hey"]
p bubble_sort_by(var) {|left,right| left.length - right.length} 
#=>["hi", "hey", "hello"]
