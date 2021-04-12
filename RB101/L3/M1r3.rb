=begin

1. (1..10).each { |n| puts "#{' ' * n}The Flintstones Rock!" }
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

2. use interpolation or call to_s on parentheses expression
  cannot concatenate an integer and a string, different types
  
  remember, concatenation = +++++
            interpolation = #{}
            
3. 

def factors(number)
  divisor = number
  factors = []
  loop do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  break if divisor == 0
  factors
end

4. 

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

mutatation in first, not in second

5. method defines own scope
   ben is referencing a variable that does not exist within scope of method definition
   fix by creating arg to accept limit or set default arg for limit
   
6.

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

36....34, bad at math, but we had the right idea

7. yep, sacked big time

8. paper

9. no, nice





















=end