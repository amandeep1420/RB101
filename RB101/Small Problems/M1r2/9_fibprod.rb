=begin

P
  - rewrite method from last problem to not use recursion
...
=end

def fib_sum(n)
  return 1 if n == 1 || n == 2
  sum = 0
  n.downto(3) do |num|
    until num == 2
      sum += (n-1) + (n-2)
      num -= 1
    end
  end
  sum
end

# not quite - book solution below..

p fib_sum(20)

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end