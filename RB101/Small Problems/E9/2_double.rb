def twice(num)
  num2 = num.to_i.digits.reverse
  halfway_index = num2.size / 2
  half_length = num2.size / 2
  a = num2[0, half_length]
  b = num2[halfway_index..-1]
  a == b ? num : num * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10

# we are having a really rough start today for some reason...it wasn't the IDE, it was me. I'm not on top of the deatils today for some reason
# I have no idea what's affecting my mental acuity right now. I slept enough, I ate, I drank water, I had tea...what else do I need right now?
# what is causing this? I feel like I've wasted the last hour doing nothing but raging over MY own mistakes - as we proved that the IDE
# was totally intact (even though some small part of me still thinks those errors weren't my fault...we recreated every single line of 
# code, verbatim, and didn't get errors in irb...
# no need to dwell; forge ahead