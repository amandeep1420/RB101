# these are going to be hard...

=begin

P
  - write a program that reads in some text from a text file you have created 
    and then plugs in a selection of randomized nouns, verbs, adjectives, and 
    advers into that text and prints it. replacement list can be built directly
    into program, but text should come from external source.
    my program should read the text and place random words of the appropriate
    types into the text for each line, printing the result. oksapdoksapokdspakd
  - input: loaded text
  - output: fixed text
  - note: need to use File class
E
  - see book
D
  - hash with symbol keys and array values holding each words for each category
A
  - first, build data structure
  - next, load the file...
  - 

C
=end

words = {
    adjective: ['quick', 'lazy', 'sleepy', 'ugly'],
    noun:      ['fox', 'dog', 'head', 'leg'],
    verb:      ['jumps', 'lifts', 'bites', 'licks'],
    adverb:    ['easily', 'lazily', 'noisily', 'excitedly']
}

text = File.open('madlibtxt.txt').read

text =  text.split(' ').map do |word|
          if word.start_with?('%')
            key = word.delete('^a-z').to_sym
            words[key].sample
          else
            word
          end
        end.join(' ')

puts text






# The :adjective brown :noun :adverb
# :verb the :adjective yellow
# :noun, who :adverb :verb his
# :noun and looks around.