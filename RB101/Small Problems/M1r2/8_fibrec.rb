=begin

P
  - write a method the computes the nth fib number, where nth is an arg.
  - input: integer
  - output: integer repping fib sum
  - note: input is always a positive integer
E
  - see book
D
  - n/a
A
  - 
  
C
=end

def fib_sum(n)
  n < 2 ? n : fib_sum(n-1) + fib_sum(n - 2)
end

p fib_sum(10)