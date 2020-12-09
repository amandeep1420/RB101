Q1.

nothing? why would referencing a variable do anything if you're not performing some kind of operation on it?
ah, I assumed that greeting may have been defined prior to the if statement.
whoa, wait - so normally, referencing an unintialized variable results in Ruby popping an 'undefined' exception;
here, however, Ruby...whoa. noted.'

Q2.

should be { a: 'hi there' }

I really, really hope so....this seems too easy.....
ig was set to reference the value of the :a key; shovel was used, which is mutating...

thank GOD. whew. thought another curveball was coming for a second...

Q3.

  A)
  
  one is: one
  two is: two
  three is: three
  
  B)
  
  same deal
  
  C)
  
  one is: two
  two is: three
  three is: one

# 100% correct :)

Q4.

# got the size check right; spun wheels a bit with our solution, reviewing book now

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

