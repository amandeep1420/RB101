# def oddities(array)
#   a = []
#   array.each_with_index do |e, idx|
#     a << e if idx.even?
#   end
#   a
# end

def oddities(arr)
  arr.select.with_index {|_, idx| idx.even?}
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# the grayed-out solution was mine; the other one is someone else's.
# I did not realize you could chain a call onto Array#select like that..