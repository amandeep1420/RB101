# def get_g(string)
#   the_gs = ''
#   counter = 0
  
#   loop do
#     break if counter == string.length
    
#     the_gs << string[counter] if string[counter] == 'g'
    
#     counter += 1
#   end
  
#   the_gs
# end

# meow = "this has four g's in it: g, g, g"

# puts get_g(meow)

# good.

# def add_s(array)
#   transformed_array = []
#   counter = 0
  
#   loop do
#     break if counter == array.size
    
#     transformed_array << array[counter] + 's'
    
#     counter += 1
#   end
  
#   transformed_array
# end

# tester = ['cat', 'dog', 'apple']

# puts add_s(tester)

# good.
  

# def get_vowels(string)
  
#   vowels = 'AEIOUaeiou'
#   vowel_string = ''
#   counter = 0
  
#   loop do
#     break if counter == string.length       # we mixed up assignment and equality AGAIN. oof.
    
#     current_letter = string[counter]
    
#     vowel_string << current_letter if vowels.include?(current_letter)
    
#     counter += 1
#   end
  
#   vowel_string
# end

# stronk = 'five vowels, ya!'

# puts get_vowels(stronk).length

# good, mostly.

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def get_fruit(hash)
  
#   keys = hash.keys
#   counter = 0
#   fruit = {}
  
#   loop do
#     break if counter == hash.length
    
#     current_key = keys[counter]
#     current_value = hash[current_key]
    
#     fruit[current_key] = current_value if current_value == 'Fruit'
    
#     counter += 1
#   end
  
#   fruit
# end

# puts get_fruit(produce)

# good.

# def mutated_with_doubled_nums(array)
  
#   counter = 0
  
#   loop do
#     break if counter == array.size
    
#     array[counter] =* 2
    
    # I got it right, but I never realized that this reassignment/mutation actually clashes with our understanding of object mutation.
    # not good.
    
# def double_odd_numbers(array)
  
#   odds_doubled = []
#   counter = 0
  
#   loop do
#     break if counter == array.size
    
#     current_number = array[counter]
#     current_number *= 2 if current_number.odd?
#     odds_doubled << current_number
    
#     counter += 1
#   end
  
#   odds_doubled
# end

# ah = [1, 2, 3, 4]

# puts double_odd_numbers(ah)

# good; peeked to see how they were handling the doubling, though. they declared a new variable in the loop to handle checking for
# the specified criteria.

def multiply(numbers, multiplier)
  
  new_numbers = []
  counter = 0
  
  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    
    new_numbers << current_number * multiplier
    
    counter += 1
  end
  
  new_numbers
end

ya = [1, 2, 3, 4]

puts multiply(ya, 3)

