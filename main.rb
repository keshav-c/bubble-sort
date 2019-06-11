def bubble_sort(array)
  array.size.downto(1) do |len|
    1.upto(len - 1) do |idx|
        array[idx - 1], array[idx] = array[idx], array[idx - 1] if array[idx - 1] > array[idx]
    end
  end
  array
end

def bubble_sort_by(array)
  array.size.downto(1) do |len|
    1.upto(len - 1) do |idx|
      test = yield(array[idx - 1], array[idx])
      array[idx - 1], array[idx] = array[idx], array[idx - 1] if test.positive?
    end
  end
  array
end

# test on integer array
p bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78]

# test on string array
var = %w(hi hello hey a bull ball)
p bubble_sort_by(var) { |left, right| left.length - right.length }
# => ["a", "hi", "hey", "bull", "ball", "hello"]
