# def sequence(num)
#   num_array = []
#   for i in 1..num
#     num_array << i
#   end
#   num_array
# end



def sequence(num)
  num > 0 ? (1..num).to_a : (num..1).to_a.reverse
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
sequence(-3) == [-3, -2, -1, 0, 1]

# holy shoot...