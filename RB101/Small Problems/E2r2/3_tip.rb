=begin

P
  - create a simple tip calculator. program should prompt for bill amount and 
    tip rate. program should compute the tip and then display both the tip and the bill total
    (tip + bill)
  - inputs: integer for bill amount, integer for tip percentage
  - outputs: float for bill amount rounded to one decimal, same for total
  - note: only positive whole integers in example
E
  - see prompt
D
  - irrelevant
A
  - string asking for bill total
  - convert to float and store (use Float#round call?)
  - string asking for tip percentage
  - convert to float and store (use Float#round call?)
  - calculate tip and total and store into vars
  - string output for tip w/ concat
  - string output for total w/ concat
D

=end

def tip_calculator
  
  puts ">> What is the bill?"
  bill = gets.chomp.to_f
  
  puts ">> What is the tip percentage?"
  tip_percentage = gets.chomp.to_f / 100
  
  tip = (bill * tip_percentage).round(1)
  total = (bill + tip).round(1)
  
  puts ">> The tip is $#{tip}"
  puts ">> The total is $#{total}"
end

tip_calculator
