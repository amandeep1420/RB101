def prompt(string)
  puts "==> #{string}"
end

def enter_number(iteration)
  prompt("Enter the #{iteration} number:")
end

def invalid_number?(num)
  num.empty? || num.include?(" ") || num.to_i.to_s != num
end

def add_number_to_collection(array)
  number = gets.chomp
  if invalid_number?(number)
    puts "That's not valid input; please try again."
    add_number_to_collection(array)
  else
    array << number.to_i
  end
end

def check_for_number(array, num)
  if array.include?(num)
    puts "The number #{num} appears in #{array}."
  else
    puts "The number #{num} does not appear in #{array}."
  end
end

def get_final_num
  enter_number("last")
  number = gets.chomp
  if invalid_number?(number)
    puts "That's not valid input; please try again."
    final_num
  else
    number.to_i
  end
end

def make_the_collection(collection, collection_iterations)
  ITERATIONS.count.times do
    enter_number(ITERATIONS[collection_iterations])
    add_number_to_collection(collection)
    collection_iterations += 1
  end
end

collection_iterations = 0
collection = []

ITERATIONS = %w(1st 2nd 3rd 4th 5th)

# -------------------------------------

make_the_collection(collection, collection_iterations)

lastnum = get_final_num

check_for_number(collection, lastnum)
