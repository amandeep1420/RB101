# spooky one..

# def running_total(array)
#   new_array = []
#   array.each do |num|
#     if num == array[0]
#       new_array << num
#       next
#     end
#     new_array << num + new_array.last
#   end
#   new_array
# end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# don't be discouraged. practice, practice, practice.