def merge(arr1, arr2)
  arr1.concat(arr2).uniq
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# | is totally cheating!!!! maaaaan

# using | with two arrays (so arr1 | arr2) returns an array containing all the values from both with no dupes
# nice