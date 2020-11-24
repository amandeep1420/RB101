# my answer:

def average(array)
  average = 0
  array.each do |x|
    average += x
  end 
  average.to_f / array.size.to_f
end 

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40

# working solution reached in 2-3 minutes. good.

# .size and .length are aliases - they return the number of elements in an array. 
# .count can do that as well, with the added benefit of either supplying an argument or block to evaluate which elements return ==/true.