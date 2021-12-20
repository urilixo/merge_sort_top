def merge_sort(array)
  return array if array.length <= 1

  left = merge_sort(array[0..(array.length / 2)-1])
  right = merge_sort(array[array.length / 2..-1])

  merge(left, right)
end

def merge(left, right)
  resulting_array = []
  until left.empty? || right.empty?
    left[0] <= right[0] ? resulting_array.append(left.shift) : resulting_array.append(right.shift)
  end
  resulting_array.append(left.shift) until left.empty?
  resulting_array.append(right.shift) until right.empty?
  resulting_array
end

p mergeSort([5, 3, 2, 1, 6, 4]) # => [1, 2, 3, 4, 5, 6]

p mergeSort([7, 8, 9, 12, 10, 11, 5, 3, 0, 2, 1, 6, 4]) # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
