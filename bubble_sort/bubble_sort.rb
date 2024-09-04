def bubble_sort(num_array)
  (num_array.length-1).times do |num_of_passthrough|
    value_swapped = false
    num_array.each_index do |index|
      if index != num_array.length-1
        if num_array[index] > num_array[index+1]
          swapped_value = num_array[index]
          num_array[index] = num_array[index+1]
          num_array[index+1] = swapped_value
          value_swapped = true
        end
      end
    end
    if value_swapped == false
      puts "Sorted!"
      break;
    end
  end
  pp num_array
end
num_array = [4,3,78,2,0,2]
bubble_sort(num_array)
# => [0,2,2,3,4,78]
bubble_sort([5,1,4,2,8])
bubble_sort([6,5,3,1,8,7,2,4])
