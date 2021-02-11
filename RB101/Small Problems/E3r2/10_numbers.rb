=begin

P
  - write a method that retuns true if its integer argument is palindromic, false otherwise.
  - input: positive integer based on examples
  - output: boolean
E
  - see book
D
  - likely use an array for methods
A
  - we could use digits, but it's better to use to_s here...just because digits is more niche
  - convert number to string
  - use string reverse method and compare
    - made it a one-liner using digits, but we called the method twice which is not ideal
C

=end

def palindromic_number?(num)
  num.digits == num.digits.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true