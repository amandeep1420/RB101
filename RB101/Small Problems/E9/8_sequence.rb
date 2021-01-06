# def sequence(count, num)
#   result_arr = []
#   for i in (1..count)
#     result_arr << num * i
#   end
#   result_arr
# end


# note: ranges have access to #Enumerable methods; don't need to convert to array beforehand
# see below:
(1..5).map { |num| num }
=> [1, 2, 3, 4, 5]

# so....

def sequence(count, num)
  (1..count).map { |i| num * i }
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

# check out their solution





# is a concise solution