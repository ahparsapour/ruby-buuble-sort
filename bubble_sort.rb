def bubble_sort(array)
  array = Array(array)
  any_change = true
  while any_change
    any_change = false
    array.each_with_index do |value, index|
      next if index == 0
      next unless array[index - 1] > value

      array[index] = array[index - 1]
      array[index - 1] = value
      any_change = true
    end
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
