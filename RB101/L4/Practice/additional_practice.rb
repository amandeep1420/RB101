# 1.

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# new_hash = {}

# flintstones.each_with_index do |name, index|
#   new_hash[name] = index
# end

# puts new_hash

# I did it just like the book!!!!!! :'D

# 2.

# my "idiomatic" solution is ages.values.reduce(:+)

# let's come up with one that uses methods, though'

# maybe....
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# age_total = 0

# ages.each do |k, v|
#   age_total += v
# end

# puts age_total

# we literally came up with the two exact solutions the book provided :'DDDD

# 3.

# had to look up reject in our work from the previous exercises - couldn't remember the name

#ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# new_ages = ages.reject do 
#             |k, v| v >= 100 
#           end

# puts new_ages

# wow, I didn't realize that it removes the key-value pair - I didn't actually expect that to work, hehehe

# book suggested keep_if and select! - let's try using them

# ages.keep_if { |_, age| age < 100 }

# puts ages

# cool - keep_if is very straightforward. notice the use of an underscore for an unused parameter - we learned this awhile back,
# might be worth ingraining it into our style since the book is repeating it

# ages.select! { |_, age| age < 100 }

# puts ages

# cool - select! is straightforward as well. make note of the difference described by the book.

# 4.

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# puts ages.values.min

# this is idiomatic, but doesn't use any of the methods we've learned about in the prior few lessons...

# unsure if they want the lowest key-value pair or just the age itself...

# curious, going to reveal.

# WELP, looks like we are 4 for 4 :'D :'D :'D

# 5.

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.each_with_index do |name, index|
#   if name.start_with?("Be")
#     puts index
#     break
#   end
# end

# janky solution, but it works...
# let's see what the book had
# ooookay, time to look up the #index method's use of a block
# returns the index of the first element for which the block returns true

# ok, let's reverse engineer for a sec

# puts flintstones.index { |name| name.start_with?("Be") }

# cool - they used the shorthand for #slice
# start_with? works too, but shorthand slice is better imo - we need to learn it

# 6.

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! { |name| name = name[0, 3] }

# puts flintstones

# I used map so the original array would be modified
# I used the #slice method
# I also gave the same exact solution as the book :'DDDDDDDDDDDDDDD

# 7.

# statement = "The Flintstones Rock"

# statement_characters = statement.chars.reject { |char| char == " " }

# good = statement_characters.each_with_object({}) do |letter, hash|
#         hash[letter] = statement.count(letter)
#       end

# SHOOT, our solution included the space as well. hmm....
# reworking...
# done, AND our solution is one line shorter than the book, hehehe

# wow, we actually figured that out. Let's see what the book had.
# the book solution is so weird! but I took some time to understand it.
# typing like this is comfy, but I know it's bad for my wrists so I shouldn't do it
# we're basically used to floating at this point, so let's just do that - i think we're actually faster when floating, anyway

# 8.

# weird....

# tricky....

# first one should go something like...

# 1
# 2
# 3
# 4
# =>[]

# second should go something like...

# 1
# 2
# => [1, 2]

# hmm, we got the second one right, but not the first. just a moment.
# okay, so the method re-samples after each loop (likely incorrect wording, but just run with it)
# this is so weird - definitely worth reviewing on the second pass

# 9.

# words = 'the flintstones rock'

# words2 = words.split(" ").map { |x| x.capitalize }.join(" ")

# puts words2

# I mean...it works...
# let's see what the book had
# the same exact solution - they just used the default for split, which is apparently " "
# lol, this is actually very reassuring :)

# 10.

# tough one ahead.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

# result = munsters.each do |person, characteristics|
#             if characteristics["age"] <= 17
#               characteristics["age_group"] = "kid"
#             elsif (18..64).cover?(characteristics["age"])
#               characteristics["age_group"] = "adult"
#             else
#               characteristics["age_group"] = "senior"
#             end
#           end

q = { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
  
result = munsters.each do |person, traits|
          case traits["age"]
            when 0...18
              traits["age_group"] = 'kid'
            when 18..64
              traits["age_group"] = 'adult'
            else 
              traits["age_group"] = 'senior'
          end
         end
puts result
puts q

puts result == q

# we got it!!!
# book suggests a case statement - why don't we try one
# weird...our case statement isn't working properly and I can't seem to figure out why... we figured out our own solution,
# let's see how the book wrote things out
# ooooooooooooooooooooooh, they wrote it specifically referencing the key in the subhash - let's try again
# so you can't use an equality operator since the case statement doesn't really work when referencing the case 'variable'?
# but ranges implicitly refer to it...I know the wording is improper, but we get it
# interesting - this was a fun one!

