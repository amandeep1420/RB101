# copy-pasted my other solution:

for i in (1..99) do
  puts i if i.even?
end

# another way

i = 1

until i > 99
  puts i
  i += 2
end

# or

a = []

a.push(2..10)

puts a

# I wanted to make a solution using an array, but I'm moving on for now.