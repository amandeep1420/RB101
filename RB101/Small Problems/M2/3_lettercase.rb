=begin

P
  input: string
  output: hash with percentages
  write a method that takes a string, then returns a hash with three pairs 
  representing the percentage of uppercase, lowercase, and non-alphabetical chars
  string will always contain one character
E
  - see book
D
  - string, array, hash...I have no idea why this step is here, need to re-learn PEDAC, fudge
A
  - split string into array of chars
  - initialize variable for array size
  - initialize variables for upper, lower, neither, all to zero
  - iterate over array, adding 1 to each var depending on char
  - at end, return array with each num divided by size * 100
=end

def letter_percentages(string)
  chars = string.chars
  char_count = chars.size
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  
  chars.each do |char|
    case
    when char.match?(/[A-Z]/) then counts[:uppercase] += 1
    when char.match?(/[a-z]/) then counts[:lowercase] += 1
    else counts[:neither] += 1
    end
  end
  
  counts.transform_values { |count| format("%0.02f", count / char_count.to_f * 100) } # FE, always returns two decimal places though
end

letter_percentages('abCdef 123')

# puts letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
# puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

puts letter_percentages('abcdefGHI')