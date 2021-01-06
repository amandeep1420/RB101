# def buy_fruit(array)
#   array.to_h.each_with_object([]) { |(fruit, count), arr| count.times{arr << fruit} }
# end



def buy_fruit(list)
  expanded_list = []

  list.each do |fruit, quantity, bang|
    quantity.times { expanded_list << fruit + bang }
  end

  expanded_list
end

buy_fruit([["apples", 3, "!"], ["orange", 1, "!"], ["bananas", 2, "!"]])

# => ["apples!", "apples!", "apples!", "orange!", "bananas!", "bananas!"] 

# IF YOU ARE ITERATING OVER AN ARRAY OF ARRAYS THAT ALL HAVE THE SAME LENGTH,
# YOU CAN USE MULTIPLE BLOCK PARAMETERS WHEN CALLING #EACH TO REFER TO EACH INDIVIDUAL ELEMENT IN THE ARRAY
# YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
