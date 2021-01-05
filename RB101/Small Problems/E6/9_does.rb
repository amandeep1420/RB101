# def include?(array, search_val)
#   array.each { |val| val == search_val ? (return true) : val }
#   return false
# end

def include?(arr, search_val)
  !!arr.find_index(search_val)
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# let's recreate the first book solution now 

# nice