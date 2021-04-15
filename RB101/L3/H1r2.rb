=begin

1. should return nil; yep
   when you initialize a local variable within an if block, the local var is initialized to nil if that block isn't executed
   
2. nice

3. all correct

4. 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

# whoop, there it is
=end

def select_letter(string, letter)
  new_str = ''
  counter = 0
  
  loop do
    break if counter == string.size
    new_str << string[counter] if string[counter] == letter
    counter += 1
  end
  
  new_str
end

question = "How many times does a particular character appear in this sentence?"

p select_letter(question, 'z').size



def solution (arr1, arr2)
  arr1.zip(arr2).map { |pair| pair.inject { |n1, n2| (n1 - n2).abs**2 } }.sum.to_f / arr1.size
end

def solution (arr1, arr2)
  arr1.map.with_index { |n, i| (n - arr2[i]).abs ** 2 }.sum.fdiv(arr1.length)
end


















