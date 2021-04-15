hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each do |_, arr|
#   arr.each { |word| puts word.delete("^aeiou") }
# end

# or, depending on desired format

hsh.each_value do |arr|
  arr.each do |word|
    word.chars.each do |char|
      puts char if 'aeiou'.include?(char)
    end
  end
end

# nice