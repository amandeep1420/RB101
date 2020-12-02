def operations(n1, n2, operator)
  total = [n1, n2].reduce(operator.to_sym)
  puts "#{n1} #{operator} #{n2} = #{total}"
end

OPS = %w(+ - * / % **)

puts "==> Enter the first number."
number1 = gets.chomp.to_f

puts "==> Enter the second number."
number2 = gets.chomp.to_f

OPS.each { |op| operations(number1, number2, op) }