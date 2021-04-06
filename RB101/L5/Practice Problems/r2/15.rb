arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# return an array which only contains hashes where all integers are even

arr.select { |hash| hash.all? { |_, value| value.all? { |num| num.even? }}}
