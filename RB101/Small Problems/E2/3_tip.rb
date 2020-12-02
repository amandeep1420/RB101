puts "What is the bill?"
total = gets.chomp.to_f

puts "What is the tip percentage?"
tip_rate = gets.chomp.to_f / 100

tip = total * tip_rate
adjusted_total = total + tip

puts "The tip is $#{format("%0.2f", tip)}"
puts "The total is $#{format("%0.2f", adjusted_total)}"

# so using the Kernal#format method goes format("%modifierstring", string) 