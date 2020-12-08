Q1.

All of the puts statements for the x_inner variables should puts "ugh ohhhhh" due to the rescue statements/scoping rules.
Literally nothing should change - none of the methods used inside the block are mutating.

Oh god....things changed after the block; specifically objects/object_ids. 

Q2.

We'll break it down for each chunk, then compare our answers to the book after everything is said and done.

a_outer = 42              # object created in memory for integer 42
b_outer = "forty two"     # object created in memory for string "forty two"
c_outer = [42]            # object created in memory for array
d_outer = 42              # variable points to same object contained in array collection for c_outer


  puts "a_outer is 42 with an id of: 1 before the block."
  puts "b_outer is "forty-two" with an id of: 2 before the block."
  puts "c_outer is [42] with an id of: 3 before the block."
  puts "d_outer is 42 with an id of: 1 before the block."             # ruby re-used object id when value was same, confirmed in irb'

start of illustrated_method call

puts "a_outer id was 1 before the method and is: !1 inside the method."
  puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method."
  puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method."
  puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method."       # all should be different due to scoping,
  puts                                                                                                        # do a and d's object IDs within the method
                                                                                                              # mimic each other?
                                                                                                              # they should; pointing to same object
                                                                                                              # going in, so reason stands that they 
                                                                                                              # should still match. going to test to 
                                                                                                              # confirm.
                                                                                                              # NOT DIFFERENT DUE TO SCOPING; we 
                                                                                                              # encountered this last question. 
                                                                                                              # you're passing in the variables.
                                                                                                              # scoping matters when it comes to 
                                                                                                              # referencing variables in defintions,
                                                                                                              # but you mixed up the defining portion 
                                                                                                              # with the actual use.
                                                                                                              # focus, focus, focus.
                                                                                                              # I was correct that they stay the same, 
                                                                                                              # though. We encountered this last time.
                                                                                                              

