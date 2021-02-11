=begin

P
  - write a program that prompts the user for two positive integers, then prints the results
    of the following operations on those numbers: addition, subtraction, product, quotient, remainder, and power.
  - input: two integers from user
  - output: strings for each operation showing operations and results
  - note: no need to account for decimals
  - note: no need for input validation
  - note: each op on own line
E
  - see book
D
  - array to hold op symbols, I have an idea
A
  - create array of symbols for each op
  - we made it strings bc concat for output string
  - grabbed inputs
  - now we're iterating
  - we'll reduce and use to_sym on each op during the call
  
  
=end

ops = %w(+ - * / % **)

puts "==> Enter the first number:"
n1 = gets.chomp.to_i

puts "==> Enter the second number:"
n2 = gets.chomp.to_i

ops.each { |op| puts "#{n1} #{op} #{n2} = #{[n1, n2].reduce(op.to_sym)}" }