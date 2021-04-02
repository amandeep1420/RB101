=begin

P
  - write a method that implements a miniature stack-and-register based 
    programming language per the book specifications
  - input: various strings acting as commands
  - output: depends on command
  - note: all operations involve integers
  - note: may assume that all programs are correct; no error dialogue needed
  - note: commands are in all-caps
E
  - see book
D
  - arrays, baby
A
  - first, initialize register and stack variables (0, [])
  - split command string by spaces, then iterate over array
C
=end

def minilang(command_string)
  register, stack = 0, []
  command_string.split.each do |entry|
    case entry
    when 'PUSH' then stack << register
    when 'ADD' then register += + stack.pop
    when 'SUB' then register -= stack.pop 
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop 
    when 'MOD' then register %= stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts "#{register}"
    else register = entry.to_i
    end
  end
end

# with the LS-suggested formatting, which we need to work on implementing
def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD'   then register += stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'SUB'   then register -= stack.pop
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = token.to_i
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)