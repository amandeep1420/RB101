=begin

P
  - input: odd integer
  - output: series of strings based on alg
  - write a method that displays a 4 pointed diamond in an nxn grid, 
    where n is an odd integer that is supplied as an arg to the method.
  - assume that n is always odd
E
  - see book
D
  - integer....TBD
A
  - bad to lock yourself into methods, but I want to use upto/downto
  - ugh
  - 
=end

def diamond(num)
  count = 1
  loop do
    puts "#{ "*" * count}".center(num)
    break if count == num
    count += 2
  end
  loop do
    count -= 2
    break if count < 1
    puts "#{ "*" * count}".center(num)
  end
end

diamond(5)