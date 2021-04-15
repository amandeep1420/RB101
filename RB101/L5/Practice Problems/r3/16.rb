VALID_CHARS = ('a'..'z').to_a + ('0'..'9').to_a

def uuid
  empty = [8, 4, 4, 4, 12]
  empty.map! { |count| '*' * count }
  empty.map { |run| run.chars.map { |_| VALID_CHARS.sample }.join('') }.join('-')
end

=begin
On line one, the variable 'greeting' is initialized to the string object 'Hello'.

On line 3, a loop is (started?). On line 4 within the loop, the variable greeting
is assigned to the string object 'hi'; because loops created with Ruby reserved syntax 
(such as loop, while, until) do not establish a separate inner scope, this re-assignment is not
local to the loop - it affects the greeting variable that was initialized before the loop in the same scope.
On line 5, the break reserved word is used to end the loop. On line 8, the String#puts method is invoked and the 
greeting variable that was initialized on line 1 is passed in as an argument; this outputs a string representation of 
the object the greeting variable is pointing to (the string object 'Hi') and returns nil.

do....end always defines a block.
loop, while, until, unless are all methods.
=end

