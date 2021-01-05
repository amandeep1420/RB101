def triangle(num)
  counter = 1
  num.times do
    puts "#{"*" * counter}".rjust(num)
    counter += 1
  end
end

triangle(5)

# upside down

def triangle(num)
  counter = num
  num.times do
    puts "#{"*" * counter}".rjust(num)
    counter -= 1
  end
end

triangle(5)
