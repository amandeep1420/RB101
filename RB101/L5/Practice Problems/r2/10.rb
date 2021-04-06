arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# without modifying original array, use map to return new array
# identical in structure but with each integer value incremented by 1

j = arr.map { |hash| hash.transform_values { |v| v += 1 }}
  
p j