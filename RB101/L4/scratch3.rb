# we want to select the key-value pairs where the value >= 2

number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

def find_pairs_bigger_than_2(hash)
  result = {}
  keys = hash.keys
  counter = 0
  
  until counter == keys.size
    current_key = keys[counter]
    value = hash[current_key]
    result[current_key] = value if hash[current_key] >= 2
    counter += 1
  end
  
  result
end

p find_pairs_bigger_than_2(number_of_pets)




