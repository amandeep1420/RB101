# arr = ['10', '11', '9', '7', '8']
arr = ['10', '11', '9', '7', '8']
# a =  arr.sort do |a, b|
#   b.to_i <=> a.to_i
# end

# puts a
a = arr.sort do |a,b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]

puts a