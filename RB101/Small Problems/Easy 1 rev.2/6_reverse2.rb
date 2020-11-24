# my answer:

def reverse_words(string)
  string.split.map! do |x|
    x.length >= 5 ? x.reverse : x
  end.join(" ")
end 

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# cake; only took me a few minutes. didn't use PEDAC, probably should've.