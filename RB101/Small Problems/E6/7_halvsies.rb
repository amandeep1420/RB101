def halvsies(array)
  array.partition { |x| array.index(x) <= (array.index(array.last) / 2) }
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# there's an Array#Slice method, too - returns the array with length modified based on arguments
# first argument is starting index, second is length of returned array