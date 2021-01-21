=begin

P
  - input: unsorted array
  - output: same array, sorted
  - write a method that iterates over the array given as an argument, sorting 
    each pair of consecutive elements, until an iteration completes with no 
    swaps conducted
  - note: mutate argument
  - note: elements can be integers, strings..
  - note: arrays will have a minimum of two elements
E
  - see book
D
  - arrays all around
A
  - we need to loop in a way that the book describes - moving from pair to pair
  - we also need to use mutating methods
  - we have the iteration done,
  - now we need to find a way to evaluate the result until iterating is no longer needed
  - we can just use a break counter type deal and incorporate incrementing it into the each_index call
  
  
=end

# def bubble_sort!(arr)
#   arr.sort!
# end

# def bubble_sort!(arr)
#   loop do
#     changed = false
#     arr.each_index do |idx|
#       if (arr[idx] <=> arr[idx+1]) == -1 || (arr[idx] <=> arr[idx+1]) == nil
#         next
#       else
#         arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
#         changed = true
#       end
#     end
#     break if changed == false
#   end
# end

def incremental_sort(arr)
    (1..arr.size-1).each do |i|
        arr[i-1], arr[i] = arr[i], arr[i-1] if (arr[i-1] <=> arr[i]) == 1
    end
    arr
end

def bubble_sort!(arr)
    check_arr = arr.clone
    return arr if check_arr == incremental_sort(arr)
    bubble_sort!(arr)
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
puts array.sort! == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
