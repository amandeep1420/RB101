=begin

P
  - write two methods that each take a time of day in 24 hours format and return the number of minutes
    before and after midnight, respectively. both methods should return a value in the range 0..1439
  - input: string in HH:MM format
  - output: integer
  - note: cannot use Date or Time class methods
  - note: 00:00 is valid input
  - note: 24:00 is valid input and should return the same value as 00:00 for both methods
E
  - see book
D
  - n/a
A
  - first, grab hour and minute counts using string method of choice
  - next, convert hours into minutes and add to minute total
    - should we declare constants? eh, maybe not this time
      - eh, maybe we should
        - eh, it's good practice
          - eh, ok
C
=end


HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  minutes = minutes + (hours * MINUTES_IN_HOUR)
  minutes == 1440 ? 0 : minutes
end

p after_midnight('00:00') == 0
#before_midnight('00:00') == 0
p after_midnight('12:34') == 754
#before_midnight('12:34') == 686
p after_midnight('24:00') == 0
#before_midnight('24:00') == 0

# yeah, yeah - I get it