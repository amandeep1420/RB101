=begin

P
  - write a method that takes a time using the specified minute-based format
    and returns the time of day in 24 hour format. method should function wioth any integer input
  - input: any positive or negative integer
  - output: a time of day string represented in HH:MM format 
  - note: positive integer = time after midnight
  - note: negative integer = time before midnight
  - note: 0 is valid input
  - note: cannot use Date or Time classes
E
  - see book
D
  - TBD
A
  - first, establish how many minutes are in a day
    - I remember that the book used constants for everything here...feels like cheating
  - next, figure out a way to get hour/minute count
    - need leftover from dividing int by hours in day if greater than 24
  
  
C
=end

HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY =  HOURS_IN_DAY * MINUTES_IN_HOUR

def time_of_day(int)
  until int.abs < MINUTES_IN_DAY
    int < 0 ? int += MINUTES_IN_DAY : int -= MINUTES_IN_DAY
  end
  int = MINUTES_IN_DAY + int if int < 0 
  hours, minutes = int.divmod(MINUTES_IN_HOUR)
  "#{format("%02d", hours)}:#{format("%02d", minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"