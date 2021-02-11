=begin

'Alice'
'Bob'

'BOB'
'BOB'

the variables name and save_name point to the same object; the upcase! method 
mutates the caller, which is the variable 'name' in this case; because the string object
'Bob' is pointed to by both name and save_name, they both reflect the change, as they are 
referencing the same object, and that object was mutated by the upcase! method

good job :)

=end