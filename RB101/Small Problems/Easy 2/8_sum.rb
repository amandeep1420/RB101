def prompt(string)
  puts ">> #{string}"
end

def sum(num)
  (1..num).reduce(:+)
end

def prod(num)
  (1..num).inject(:*)
end

def invalid_num?(num)
  num.empty? || num.to_i.to_s != num
end

def invalid_choice?(choice)
  choice.empty? || choice.include?(" ") || choice.length > 3
end

def get_choice
    prompt("Enter 's' to compute the sum, 'p' to compute the product.")
    choice = gets.chomp.downcase
    if invalid_choice?(choice)
      prompt("That's not a valid input; please try again.")
      get_choice
    else
      choice
    end
end

def get_num
    prompt("Please enter an integer greater than 0")
    num = gets.chomp
    if invalid_num?(num)
      prompt("That's not valid input; please try again.")
      get_num
    else
      num.to_i
    end
end

def desired_operation(choice, num)
  case choice
  when 's'
    puts "The sum of the integers between 1 and #{num} is #{sum(num)}."
  when 'p'
    puts "The product of the integers between 1 and #{num} is #{prod(num)}."
  else
    puts "Unknown operation: releasing the hounds."
  end
end

# ------------- body --------------

num = get_num

choice = get_choice

desired_operation(choice, num)
