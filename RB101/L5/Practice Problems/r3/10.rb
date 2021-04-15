arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# arr.each_with_object([]) do |hsh, arr|
#   hsh.each_with_object({}) do |(k, v), hash|
#     hash[k] = (v + 1)
#   end
#   arr << hash
# end

# no.

arr.each_with_object([]) do |hash, arr|
  modified = {}
  hash.each do |k, v|
    modified[k] = (v + 1)
  end
  arr << modified
end