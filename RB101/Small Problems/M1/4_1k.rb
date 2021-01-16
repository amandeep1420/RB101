***incomplete***


=begin
P
  input: array
  output: new array
  problem: you have an array of numbers from 1 to "n" representing lights that are off. You will iterate over your lights
  "n" times, with each iteration moving forward one light after completion, flipping every other light to the opposite status during each iteration.
  Return an array representing which lights are on after all iterations have completed.
E
  see book
D
  arrays all around
A
  - create array of integers from 1 to n
  - create a loop
    - until n < 0
       - loop do
        - n - 1
        - flip = 
        - iterate over array, from -1 to n, swapping 
        
=end


# okay, so saw that the book used a hash and helper methods - let's go from there

# redo

=begin
P
  - write a method/program that generates 'n' lights and identifies which lights are on via an array after n repetitions. all lights are on during 
    the first repetition; for each subsequent repetition, every other light's switch is flipped.
E
  - see book
D
  - we'll try a hash; need to return an array identifying which lights are on via returning their indices
A 
  - create a hash with n lights; keys will range from 1-n, values all start at true
    - extracted to helper method
  - start iteration
    - we need a way to 
  
  
  
  
  
=end

def generate_lights(n)
  lights = {}
  light = 1
  n.times do 
    lights[light] = true
    light += 1
  end
  lights
end

# giving up for now.
# no, I'm not.

# not using a hash, either - running with my original stuff. if they can do it, I can do it
# we're approaching this the wrong way - let's make this as simple as possible
# what's happening to each light? how many times is each light iterated over? can we reduce this logic?
# note: 1 always comes back as being on


def lightswitch(n)
  lights = (1..n).to_a
  
  