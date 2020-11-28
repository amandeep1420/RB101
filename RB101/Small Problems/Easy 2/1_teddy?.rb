def your_age(person="Teddy")
  puts "#{person} is #{rand(20...200)} years old!"
end

your_age # => Teddy is something years old!
your_age("Jack") # => Jack is something years old!

# so used to writing methods that I'm making them unnecessarily now, lol.
# correct, but no need to create a separate method for this.