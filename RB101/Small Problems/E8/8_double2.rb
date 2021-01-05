CONSONANTS = ("a".."z").to_a.reject{ |char| "aeiou".include?(char) }

def double_consonants(string)
  string.chars.map do |char| 
    CONSONANTS.include?(char.downcase) ? char * 2 : char
  end.join
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

# I originally typed out every consonant - above is the revision after viewing a solution
# check this out - the power of regex

def double_consonants(str)
  str.chars.map {|char| char.match?(/[a-z&&[^aeiou]]/i) ? char * 2 : char}.join
end