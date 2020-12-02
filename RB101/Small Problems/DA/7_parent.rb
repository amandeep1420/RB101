# my answer:

s = 'abc'
puts s.private_methods.inspect    # not sure about this one...

# gah. totally wrong. no biggie, let's read.

# key takeaway: subclass methods WILL override superclass methods if present.

# solution:

puts s.private_methods(false).inspect

