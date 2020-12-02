Do this one again.

# my answer:

=begin
 
problem
  - input: array
  - output: puts list of occurences of each element
  - not case sensitive
  - summary: count the number of times an element is repeated within a given array, then list those occurences.
example
  - vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
data
  - array is given; output should be a puts list
algorithm
  - hmm...
  - we need some kind of filtration method...or a way to filter for multiples.
  - we need a way to have this occur in a way that automatically determines the number of elements in the array (cannot specify beforehand).
  - we need a way to track this - some kind of counter.
  - we need a way to count the number of occurences...
  - this is making me feel foolish..
  - methods that may be relevant: select, uniq, each
  - I'm overthinking this.
  
=end 

# I did some testing, tried out a few methods, but can't come to a working solution for some reason; I don't want to waste more time on this, so I'm 
# going to view the solution.

#....those were hash rockets in the expected output. I should've picked up on that.

# came back after taking a break; I remember that the solution used an empty hash and the uniq method, count method, each method...let's see if we 
# can come up with something now, at least.

#def count_occurences(array)
  
 # occurences = {}
  
  #occurences
#end
  
# nah, let's just look at the solution again.

def count_occurrences(array)
  occurrences = {}                                  # declared empty hash

  array.uniq.each do |element|                      # iterating over each element of the array after removing multiples for this instance only
    occurrences[element] = array.count(element)     # setting each element as a hash key, and having each key equal the number of times that element 
  end                                               # occurs within the array
  
  puts occurrences                                  # I just wanted to see how it looked, here
  
  occurrences.each do |element, count|            
    puts "#{element} => #{count}"                   # putsing them for us to view
  end
end

a = [1, 2, 3]
count_occurrences(a)

hash = {cat: 2, dog: 3, fish: 4}

puts hash[:cat]
puts hash[:dog] 

# this was a really simple problem - I couldn't solve it because I forgot how to work with hashes to an extent.
# "to an extent", he says...

# whew.