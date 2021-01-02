# def reverse(array)
#   reversed_array = []
#   index = -1
#   until reversed_array.size == array.size
#     reversed_array << array[index]
#     index -= 1
#   end
#   reversed_array
# end 

def reverse(array)
  result = []
  duplicated = array.dup

  until duplicated.empty?
    result << duplicated.pop
  end

result
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true