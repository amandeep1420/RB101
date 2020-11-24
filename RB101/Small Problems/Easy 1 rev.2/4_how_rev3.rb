def count_occurrences(array)
  
  counted = {}
  
  array.each do |element|
    counted[element] = array.count(element)
  end 
  
  counted.each do |element, count|
    puts "#{element} => #{count}"
  end 

end 

# it's finally sticking. I have hope.
