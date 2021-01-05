def interleave(arr1, arr2)
  new_arr = []
  index = 0
  while new_arr.size < (arr1 + arr2).size
    new_arr << arr1[index]
    new_arr << arr2[index]
    index += 1
  end
  new_arr
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# let's try to recreate the book solution now

def interleave(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |element, index|
    new_arr << element << arr2[index]
  end
  new_arr
end

# good

# FE

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

# kinda stole this from someone else, hehehe