def minilang(string)
  stack = []
  full_string = string.split
  register = 0
  current_string = ''
  until full_string.empty?
    current_string = full_string.shift
    case current_string
      when 'PUSH' then stack << register
      when 'ADD' then register = stack.pop.to_i + register
      when 'SUB' then register = register - stack.pop.to_i
      when 'MULT' then register = register * stack.pop.to_i
      when 'DIV' then register = register / stack.pop.to_i
      when 'MOD' then register = register % stack.pop.to_i
      when 'POP' then register = stack.pop
      when 'PRINT' then puts register
      else register = current_string.to_i
    end
  end
end

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')

# I feel like I cheated since I glimpsed the fact that they used a case statement
# but we still wrote out a solution that passes all the test cases, so bleh

