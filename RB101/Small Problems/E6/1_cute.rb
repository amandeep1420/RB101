=begin
Problem
  - input: float - number that represents an angle b/t 0 and 360
  - output: string - string that shows angle in degrees using degree, minute, and seconds
Examples
  - see book
Data structure
  - let's use an array to collect everything...let's try it, at least?
Algorithm
  - declare empty measurements array beforehand
  - declare constants beforehand for symbols + maybe measurement conversions? meh
  - i think we found the algo - true_degree = input.to_i
                              - minute_isolated = (input % input_to_i) => this is still a float, fyi
                              - minute_float = (minute_isolated * 60)
                              - true_minute = minute_isolated.to_i
                              - second = (minute_float % true_minute * 60).to_i
  - we need to know sprintf("02d", number) to format all the output to use min of two digits with zero in front
  - finally, use array reference when returning string
Code
  - let's try it
  °
=end

def dms(input)
  degree = input.to_i
  minute = 0
  minute_float = 0
  second = 0
  
  if input != degree
    minute_isolated = (input % (input.to_i))
    minute_float = minute_isolated * 60
    minute = minute_float.to_i
  end
 
  second = (minute_float % minute * 60).to_i if minute != 0

  format(%(%01d°%02d'%02d"), degree, minute, second)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")