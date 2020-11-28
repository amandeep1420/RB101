def prompt(string)
  puts ">> #{string}"
end

def sum(num)
  total = 0
  for i in (1..num) do
    total += i
  end
  total
end

def prod(num)
  total = 0
  for i in (1..num) do
    total += i
  end
  total
end

prompt("Please enter an integer greater than 0")
num = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = gets.chomp.downcase

case choice
  when 's'
    puts "The sum of the integers between 1 and #{num} is #{sum(num)}."
  when 'p'
    puts "The product of the integers between 1 and #{num} is #{prod(num)}."
end

