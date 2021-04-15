arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.values.all? do |subarrs|
    subarrs.all? { |x| x.even? }
  end
end

# didn't get this the first time