=begin

P
  - write a method that takes a floating point number that represents an angle
    between 0 and 360 degrees and returns a string that represents that angle in
    degrees, minutes, and seconds. we should use the relevant symbols per the book.
  - input: float
  - output: formatted string
  - note: degree has 60 minutes
  - note: minute has 60 seconds
E
  - dms(30) == %(30°00'00")
  - dms(76.73) == %(76°43'48")
  - dms(254.6) == %(254°36'00")
  - dms(93.034773) == %(93°02'05")
  - dms(0) == %(0°00'00")
  - dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
D
  - tbd
A
  - okay, we figured out the calculation - now to implement
  
C
=end

def dms(angle)
  angle = (angle.divmod(360))[1] if !(0..360).include?(angle)
  degrees, deg_remainder = angle.divmod(1)
  minutes, min_remainder = (deg_remainder * 60).divmod(1)
  seconds = min_remainder * 60
  format("%d°%.02d'%.02d\"", degrees, minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")