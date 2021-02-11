=begin

P
  - write a program that solicits 6 numbers from the user, then prints a message that described 
    whether or not the 6th number appears amongst the first 5 numbers
  - inputs: positive integers
  - output: string confirming/denying presence of 6th number in nums of first 5 numbers
  - note: assuming positive integers based on examples
  - note: ...
E
  - see book
D
  - arrays, baby
A
  - first, establish array of strings for each number entry request
  - we will also need to establish a nums array and a var to capture last number
  - iterate over string array; if not last, push to nums
    - if last, set last number var to capture value
  * - we should probs do input validation; let's write a quick method for that
  - okay, cool
  - converted number to integer
  - now we push to nums or set capture var based on pass
  - finally, check for presence, and display string based on presence
C
=end

nums = []
last_num = 0

%w(1st 2nd 3rd 4th 5th last).each do |pass|
  puts "==> Enter the #{pass} number:"
  number = gets.chomp.to_i
  pass == 'last' ? last_num = number : nums << number
end

case nums.include?(last_num)
when true then puts "The number #{last_num} appears in #{nums}."
else puts "The number #{last_num} does not appear in #{nums}."
end
