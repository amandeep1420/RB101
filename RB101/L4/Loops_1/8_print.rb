# numbers = [7, 9, 13, 25, 18]

# until numbers.empty?
#   puts numbers.shift
# end

# or

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.length
  puts numbers[count]
  count += 1
end

# correct, but I want to create a habit of using the counter to return array values via index reference.
# seems to be coming up a lot.