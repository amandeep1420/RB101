# do further exploration on second go-around
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours = time[0, 2].to_i
  minutes = time[3, 2].to_i
  
  true_minutes = ((hours * MINUTES_PER_HOUR) + minutes)
  delta = true_minutes % MINUTES_PER_DAY 
  delta
end

def before_midnight(time)
  hours = time[0, 2].to_i
  minutes = time[3, 2].to_i
  
  true_minutes = -((hours * MINUTES_PER_HOUR) + minutes)
  delta = true_minutes % MINUTES_PER_DAY 
  delta
end






def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i) 
  ((hours * MINUTES_PER_HOUR) + minutes) % MINUTES_PER_DAY
end

def before_midnight(time)
  hours, minutes = time.split(':').map(&:to_i) 
  (-((hours * MINUTES_PER_HOUR) + minutes)) % MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0