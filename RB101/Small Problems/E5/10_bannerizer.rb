# # def print_in_box(string)
# #   count = string.size
# #   print "+-"
# #   count.times { |i| print "-" }
# #   print "-+\n"
# #   print "| "
# #   count.times { |i| print " " }
# #   print " |\n"
# #   print "| "
# #   print string
# #   print " |\n"
# #   print "| "
# #   count.times { |i| print " " }
# #   print " |\n"
# #   print "+-"
# #   count.times { |i| print "-" }
# #   print "-+\n"
# # end



# # def print_in_box(string)
# #   string = string[0, 76]            # String#slice method - totally forgot about this functionality
# #   count = string.length
  
# #   dash_line = "+-#{"-" * count}-+"
# #   pipe_gap = "| #{" " * count} |"
# #   string_line = "| #{string} |"
  
# #   puts dash_line
# #   puts pipe_gap
# #   puts string_line
# #   puts pipe_gap
# #   puts dash_line
# # end

# MAX_STR_LENGTH = 76


# def print_in_box(string)
#   fixed_string_array = []
#   asa_counter = 0
#   string_array = string.split("")
#   sa_counter = 0
  
#   loop do
#     break if sa_counter == string.length
    
#     if fixed_string_array[asa_counter].nil?
#       fixed_string_array[asa_counter] = string_array[sa_counter]
#     else
#       fixed_string_array[asa_counter] << string_array[sa_counter]
#     end
    
#     sa_counter += 1
#     asa_counter += 1 if fixed_string_array[asa_counter].size == MAX_STR_LENGTH
#   end
  
#   count = fixed_string_array[0].length 
#   line_length = fixed_string_array[0].length + 2

#   final_string_array = fixed_string_array.map do |string|
#                         string.center(line_length)
#                       end
                       
#   dash_line = "+-#{"-" * count}-+"
#   pipe_gap = "| #{" " * count} |"
  
#   puts dash_line
#   puts pipe_gap
#   final_string_array.each { |string| puts "|" + string + "|" }
#   puts pipe_gap
#   puts dash_line
# end


def long_txt(string, width)
  line_start = 0

  loop do
    text = string[line_start, width]
    puts '| ' + text.ljust(width) + ' |'
    line_start += width
    break if line_start > string.size + 1
  end
end

def print_in_box(str, max_width = 76)
  str_width = str[0, max_width].size

  puts "+-" + ''.ljust(str_width, '-') + "-+"
  puts "| " + ''.ljust(str_width, ' ') + " |"
  if str.size < max_width
    puts '| ' + str + ' |'
  else
    long_txt(str, max_width)
  end
  puts "| " + ''.ljust(str_width, ' ') + " |"
  puts "+-" + ''.ljust(str_width, '-') + "-+"
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')
print_in_box("To be, or not to be, that is the question: Whether 'tis nobler in the mind to suffer The slings and arrows of outrageous fortune, Or to take arms against a sea of troubles And by opposing end them.")

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')
# print_in_box("This is a very, very long string. I have no idea what I want to type into this string, but it doesn't really matter since this is being used for testing purposes")