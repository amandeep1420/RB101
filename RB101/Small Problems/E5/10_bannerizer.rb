def print_in_box(string)
  count = string.size
  print "+-"
  count.times { |i| print "-" }
  print "-+\n"
  print "| "
  count.times { |i| print " " }
  print " |\n"
  print "| "
  print string
  print " |\n"
  print "| "
  count.times { |i| print " " }
  print " |\n"
  print "+-"
  count.times { |i| print "-" }
  print "-+\n"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')