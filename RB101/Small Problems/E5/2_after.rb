# 9405503699300209990057
# # minutes in a day: 1440
# # need to create a method that converts into minutes/hours...
# # ....
# # first, we determine 
# # the book declared constants for this...I almost wish I hadn't looked tbh

# # I don't think I can figure this one out in a timely fashion to be perfectly honest.......


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format("%02d:%02d", hours, minutes)
end

puts time_of_day(-3)
time_of_day(100)
time_of_day(-100)
time_of_day(3000)
time_of_day(-3000)

# make note of the fact that they declared constants vs. using random numbers in the code
# we had started developing this habit - let's get back to it

