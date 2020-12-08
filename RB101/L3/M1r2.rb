Q1.

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# consistently unable to solve this one - review, again

Q2.

(40 + 2).to_s

or

puts "the value of 40 + 2 is #{40 + 2}"

Q3.

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# changed begin to while divisor > 0 - mostly recalled from prior runthrough

 bonus1: determine if result is divisor (divides cleanly as integer, not float)
 bonus2: return the array containing the divisors
 
Q4.

first method uses a mutating method to modify the input array/buffer, leaving it modified after the method has been used
first method is better; second method doesn't update original array.'

Q5.

limit variable not available in method due to scoping rules; need to declare limit variable within method for method to function.
no, additional argument that can be passed in instead.

Q6.

34

Q7.

yes, but only because I remember it does.

ruby passes object ids into methods, not values. it passes in specific addresses in memory, not values.

Q8.

paper, but after realizing I was being a fool

Q9.

no

good.

