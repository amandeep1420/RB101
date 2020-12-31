a = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  new_hash = {}
  hash.map do |letter, integer|
    new_hash[letter] = integer + 1
  end
  new_hash
end

puts a

# do this one again