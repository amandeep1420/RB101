# def fizzbuzz(start, fin)
#   for i in (start..fin)
#     if i % 15 == 0
#       print "FizzBuzz"
#     elsif i % 5 == 0
#       print "Buzz"
#     elsif i % 3 == 0
#       print "Fizz"
#     else
#       print i
#     end
#     i == fin ? (puts " ") : (print ", ")
#   end
# end

# fizzbuzz(1, 34) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz    

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  if number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  elsif number % 5 == 0
    'Buzz'
  elsif number % 3 == 0
    'Fizz'
  else
    number
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# not sure why they used the blank case statement...adds an extra line...saves a few characters overall...weird...

# do this one again