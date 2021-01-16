=begin
going to attempt PEDAC usage on every problem from here on out

P
  - input: array
  - output: new array (no mutation)
  - take first element of array and move it to the end of the array without mutating (return a new array)
E
  - book - note that object type is irrelevant
  - edge cases: nothing of note comes to mind
D
  - arrays all around, various object types for elements
A
  - declare new variable equaling value of passed in array
  - attempt to set first element as last element via element reference
  - return copy array via last line of method
  - bad: leaves first element intact
  - second attempt: use #shift and #<< 
  - I thought we considered mutation of the arg, but we didn't - used #clone to get around it
C
  - let's try it
=end

def rotate_array(arr)
  new_arr = arr.clone
  first_element = new_arr.shift
  new_arr << first_element
  new_arr
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# our solution works, but there was a far simpler one...

# FE attempt

=begin
A
  - declare empty array
  - determine if string or integer is being passed in
  - split object depending on above into array and set a variable to equal result
  - use our method to rearrange
  - join elements back together based on object type (overarching conditional)
=end

def rotate_array(arr)
  new_arr = arr.clone # avoid mutation
  first_element = new_arr.shift
  new_arr << first_element # could've called new_arr.shift here instead
  new_arr # later realized that this is redundant
end

def rotate_object(str_or_num)
  result_array = []
  if str_or_num.to_s.to_i == str_or_num
    result_array = str_or_num.digits.reverse
    rotate_array(result_array).join.to_i
  else
    result_array = str_or_num.split # assuming string contains multiple words
    rotate_array(result_array).join(' ')
  end
end

rotate_object(1234)
rotate_object("now this will make sense")

