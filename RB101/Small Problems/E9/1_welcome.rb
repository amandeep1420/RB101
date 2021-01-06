# def greetings(array, hash)
#   "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
# end



def greetings(name, job)
  name = name.join(' ')
  title = job[:title]
  occupation = job[:occupation]
  "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })