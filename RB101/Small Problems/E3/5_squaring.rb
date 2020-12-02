def multiply(num1, num2)
  num1 * num2
end

# they wanted us to use the prior method in the new method's definition.

def power(n, power)
  multiply(n, n**(power-1))
end

puts power(5, 2) == 25  # true
puts power(2, 5) == 32  # true
