=begin

P
  - write a method that will take a short line of text, and print it within a box
  - input: string
  - output: formatted terminal string outputs (see example)
  - note: empty string should return empty box
E
  - see book
D
  - strings..
A
  - need to create code for reach line
    - hmm, looks like empty box is two spaces wide
    
C
=end

def print_in_box(string)
  size = string.size
  puts '+-' + ('-' * size) + '-+'
  puts '| ' + (' ' * size) + ' |'
  puts '| ' + string + ' |'
  puts '| ' + (' ' * size) + ' |'
  puts '+-' + ('-' * size) + '-+'
end

print_in_box('To boldly go where no one has gone before.')
