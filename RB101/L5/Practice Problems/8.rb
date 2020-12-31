hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.values.each do |array|
  array.each do |string|
    puts (string.chars.keep_if{ |char| "AEIOUaeiou".include?(char) }.join)
  end
end



