=begin

P
  - write a method that takes two args. the first is the starting number, 
    the second is the ending number. print out all numbers between the two 
    numbers; if the number is divisible by 3, print 'fizz; if a number is 
    divisible by 5, print 'buzz'; if divisible by both, print 'fizzbuzz'.
  - input: two integers
  - output: formatted string
  - note: example does not utilize negatives, zero, etc.
E
  - see book
D
  - possible array, string, w/e
A
  - establish a range using input, then iterate
  - created a storage array
  - use a case statement to evaluate each entry in range
  - at the end, output formatted string based on whether element is last or not
C
=end

def fizzbuzz(n1, n2)
  output = []
  (n1..n2).each do |num|
    case
    when num % 15 == 0 then output << "FizzBuzz"
    when num % 5 == 0 then output << "Buzz"
    when num % 3 == 0 then output << "Fizz"
    else output << num
    end
  end
  output.each { |entry| output[-1] == entry ? puts(entry) : print("#{entry}, ") }
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz