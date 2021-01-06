def negative(num)
  num > 0 ? num * -1 : num
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

# you can write -var instead of var * -1 - should've assumed as much

