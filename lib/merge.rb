def merge_sort(array)
  return array if array.length <= 1

  left = merge_sort(array[0..(array.length / 2) - 1])
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

array = []
rand(1000).times do
  array.append(rand(1000))
end

puts "Unsorted: #{array} \n"
puts "Sorted: #{merge_sort(array)}" 
