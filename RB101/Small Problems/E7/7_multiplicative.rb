def show_multiplicative_average(arr)
  product = 1.to_f
  arr.each { |num| product *= num }
  quotient = (product/(arr.size))
  puts "The result is #{format("%.3f", quotient)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# after viewing solutions

def show_multiplicative_average(arr)
  quotient = arr.reduce(:*) / (arr.size.to_f)
  puts "The result is #{format("%.3f", quotient)}"
end

# FE - format call is used on an integer => three zeros are put after decimal as 'average' variable is an integer