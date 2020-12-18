# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# should return pairs with keys 'apple' and 'pear'

# doesn't rassoc do this?
# this selection is about selection and transformation...
# hash, not an array, so the counter/index reference method doesn't work here.
# shoot, it's assoc, and it returns an array. the book method returns a new hash from what I can see? new or the same, doesn't matter I suppose.

# def select_fruit(hash)
  
#   fruit = hash.select { |k, v| v == 'Fruit' }
  
#   fruit
# end

# puts select_fruit(produce)

# book hint tells us to loop, though.
# jfdsiofjdsiofsjd. knew this would be a problem.

# ok.
# took a tiny look at the solution.

# def select_fruit(hash)
  
#   fruits = {}
#   keys = hash.keys
#   counter = 0
  
#   loop do
#     break if counter == keys.size
    
#     current_key = keys[counter]
#     current_value = hash[current_key]
    
#     if current_value == 'Fruit'
#       fruits[current_key] = current_value
#     end
    
#     counter += 1
#     end
    
#   fruits
# end

# puts select_fruit(produce)

# # we peeked a few times, but we did the work for the most part.
# # 

# my_numbers = [1, 4, 3, 7, 2, 6]

# puts my_numbers

# def double_numbers!(numbers)
  
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
    # current_number = numbers[counter]
    # numbers[counter] = current_number * 2
    
#     numbers[counter] *= 2
    
#     counter += 1
#   end
# end

# double_numbers!(my_numbers)

# puts my_numbers

# excellent; not only did I come up with the right solution, I also refactored just as the book suggests.
# the book returns the array that's passed into the method in the final line of the method, though - not sure if that's necessary.

# checked and confirmed properly as well.
# good.


# def double_odd_indices(array)
  
#   doubled_numbers = []
#   counter = 0
  
#   loop do
    
#     break if counter == array.size
    
#     current_number = array[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number
    
#     counter += 1
#   end
#   doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]

# puts double_odd_indices(my_numbers)

# correct. good job. note how they're spacing how their code...


# def general_select(produce_list, selection_criteria)
  
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_produce = {}
  
#   loop do
#     break if counter == produce_keys.length
    
#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]
    
#     if current_value == selection_criteria
#       selected_produce[current_key] = current_value
#     end
    
#     counter += 1
#   end
  
#   selected_produce
# end
      
      
      
      
      
      
# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# puts general_select(produce, 'Fruit')
# puts general_select(produce, 'Vegetable')


# holy hell, need to pay attention to assignment operator vs. equality operator.
# code was 100% right, but I spent almost 10 minutes debugging before I realized the problem.
# ugh.

# we did it right aside from that.

# def multiply(array, transformation_criteria)
  
#   new_array = []
#   counter = 0
  
#   loop do
#     break if counter == array.length
    
#     new_array << array[counter] * transformation_criteria
    
#     counter += 1
#   end
  
#   new_array
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# puts multiply(my_numbers, 3)

# note: new array returned here.

# def select_letter(string, letter)
  
#   selected_chars = ''
#   counter = 0
  
#   loop do
#     break if counter == string.length
    
#     selected_chars << string[counter] if string[counter] == letter
    
#     counter += 1
#   end
  
#   selected_chars
# end

question = 'How many times does a particular character appear in this sentence?'
# puts select_letter(question, 'a') == "aaaaaaaa"
# puts select_letter(question, 't') == "ttttt"
# puts select_letter(question, 'z') == ""



def select_letter(sentence, character)
  
  selected_chars = ''
  counter = 0
  
  loop do
    break if counter == sentence.length
    selected_chars << sentence[counter] if sentence[counter] == character
    
    counter += 1
  end
  
  selected_chars
end

puts select_letter(question, 'a') == "aaaaaaaa"
puts select_letter(question, 't') == "ttttt"
puts select_letter(question, 'z') == ""