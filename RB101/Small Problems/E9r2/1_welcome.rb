=begin

P
  - create a method that takes 2 args (array and hash). the array will contain
    2 or more elements that, when combined with adjoining spaces, will produce
    a person's name. the hash will contain two keys, :title and :occupation,
    and the appropriate values. your method should return a greeting that uses
    the person's full name and mentions the person's title and occupation.
  - input: array, hash
  - output: formatted string
  - note: assuming never empty
E
  - see book
D
  - array, hash..
A
  - just use interpolation?
C
=end

def greetings(arr, hash)
  name = arr.join(' ')
  puts "=> Hello, #{name}! Nice to have a #{hash.values.join(' ')} around!"
end

# or

# def greetings(arr, hash)
#   puts "=> Hello, #{arr[0]} #{arr[1]} #{arr[2]}! Nice to have a #{hash[:title]} #{hash[:occupation]} around!"
# end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })