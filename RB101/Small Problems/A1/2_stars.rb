=begin

P
  - write a method that displays an 8-pointed star in an n by n grid, where 
    n is an odd integer that is supplied as an arg to the method. the smallest
    such star you need to handle is a 7x7 grid
  - input: odd integer greater than 7
  - output: 8-pointed star in terminal per book example
  - note: hm...
E
  - see book
D
  - n/a
A
  - splitting this into three parts will be simplest/easiest: building the 
    outer top, building the core, building the outer bottom
  - the top/bottom always have three stars per line/each line grows/shrinks until
    it has reached the core...
  - the top/bottom always have three lines. crucial.
  - the top/bottom always have 
C
=end


def star(int)
  idx, line, lines = 0, '', []
  
  until line.include?('***')
    line = ' ' * int
    line[idx], line[int/2], line[-1-idx] = '*', '*', '*'
    lines << line
    idx += 1
  end
  
  puts lines, '*' * int, lines.reverse
end


star(7)
star(9)