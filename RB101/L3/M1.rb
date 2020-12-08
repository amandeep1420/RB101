Q1.

10.times { puts "The Flintstones Rock!".rjust(10) }

..forgoed further attempts in favor of reviewing solution.
saw it for a moment, going to try to code again.

10.times { |number| puts (" " * number) + "The Flintstones Rock!" + number.to_s }
# added the number.to_s to see what number would represent the first iteration. going to go review doc now.
# .times iterates the block from 0 to n-1 times, then returns n at the end.
# these problems are making me feel incompetent - which is fine, we've barely scratched the surface in the long run.
# do not let your ego come into play. do not feel discouraged.

Q2.

puts "the value of 40 + 2 is " + (40 + 2) => error
puts "the value of 40 + 2 is " + (40 + 2).to_s => fixed
puts "the value of 40 + 2 is #{40 + 2}" => fixed

# exactly right!

Q3.

1. unsure as to how to proceed.
2. remainder from checking if number cleanly divides by divisor to show if it's a factor or not. remainder == 0 indicates divisor is a factor.
3. return array containing factors from method.

---

1. the changed the loop to a 'while' loop, which won't pop the error. testing now.

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

Works, fulfills the criteria - book mentioned that it didn't need to actually function with a zero or negative, just that 
it needed to not pop errors.

2. basically correct - they specifically used the word integer.
3. correct - the book mentions that the return value would've been nil otherwise.

Q4.

I believe the first method actually mutates the array passed in, whereas the second method sets a variable local to the method as
containing the value for the combined/new array - not actually mutating the array passed in.

I was right - tested and confirmed in irb.

"Yes, there is a difference. While both methods have the same return value, 
in the first implementation, the input argument called buffer will be modified 
and will end up being changed after rolling_buffer1 returns. 
That is, the caller will have the input array that they pass in be different once the call returns. 
In the other implementation, rolling_buffer2 will not alter the caller's input argument."

Q5.

Limit variable is declared outside of the method - method defines its own scope.
Need to define an additional parameter so you can pass in desired limit.

I was right! Heheheheeeeeeeeeeeee.

Q6.

36.

I was right, just did the mental math wrong. Nice. Get your head in the game, 12head.

Q7.

No - the Array#each method isn't a mutating method. 
Hmm - upon further investigation, the .values method returns a new array.
So, it's likely due to the .values method being used.
Let's see what the book says.
100% wrong.
Time to read....

Dang.

Q8.

"paper"     # why did this one take me a few minutes to think through? brain shouldn't be this slow.
            # got it right...though it wasn't particularly difficult...
            
Q9.

"no"

# correct. fairly quick. well done.


