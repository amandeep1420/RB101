=begin

Pseudo-code helps us load a problem into our brains. It doesn't follow a rigid format.
Example:

~
Given a collection of integers.

Iterate through the collection one by one.
  - save the first value as the starting value.
  - for each iteration, compare the saved value with the current value.
  - if the saved value is greater, or it's the same
    - move to the next value in the collection
  - otherwise, if the current value is greater
    - reassign the saved value as the current value

After iterating through the collection, return the saved value.
~

Solving problems is a multi-layered endeavor:
1. logical problem domain layer
2. syntactical programming language layer

When you're new, doing both at the same time sucks. 
Enter: pseudo-code. Pseudo-code allows us to focus on the logical problem domain layer without being dragged down into the programming layer.
We will need to verify the logic of our pseudo-code after writing it - this is where we translate it into programming code.
We establish a clear demarcation in workflow so we can focus on one or the other - this way, programming language syntax issues aren't wrestled with 
during the pseudo-code process and our flow is better overall.

~~~NEXT STEP~~~

We will need to formalize our pseudo-code syntax a bit before we can do proper translation.

Memorize these pseudo-code keywords:

START       :start of the program
SET         :sets a variable we can use for later
GET         :retrieve user input
PRINT       :displays output to user
READ        :restrieve value from variable
IF / 
ELSE IF /   :show conditional branches in logic
ELSE
WHILE       :show looping logic
END         :end of the program

We can use these keywords to act as a pseudo-programming language - one that's easily read in English. 
This allows us to be a little relaxed in the precision of our syntax.

Here's an example of the above pseudo-code translated to formal pseudo-code:
~
START

# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value within numbers collection at space 1

WHILE iterator <= length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved_number = current_number

  iterator = iterator + 1

PRINT saved_number

END
~
Note the usge of PRINT to show the final value to be returned.
The above translation aaaalmost looks like actual program code, but it's not quite there yet.
The advantage to this step is that we're giving a lot more structure to our pseudo-code + we can think at a more detailed level; we still don't need 
to worry about syntax yet.
Though this formal pseudo-code is detailed, it still suffers from a lack of logic verification.
Time to test: let's translate this to program code.

~~~NEXT STEP~~~

Time to code. See below:
=end 

def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||= num  # assign to first value
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

=begin
It works! I didnt' write it, so I don't know why I'm excited, but yeah!

So the flow goes as such: pseudo-code => formal pseudo-code => programming code.

This was a simple problem; complex problems require a piecemeal approach. You need to verify your logic step-by-step so you don't have to overhaul 
all of your pseudo-code every time something fails, your logic was incorrect, etc. That would seriously suck.

Okay, this is going to be painful. Let's try writing some pseudo-code - casual, then formal - for the given prompts.

//////////////////////////////////////////////////////////////////

1. a method that returns the sum of two integers

(casual)

Given two integers.

Add both integers together and save that to a variable.

Return the variable containing the sum of the two integers.

(formal)

START

# given two integers

SET sumofintegers = first integer + second integer

PRINT sumofintegers

END

//////////////////////////////////////////////////////////////////

2. a method that takes an array of strings, and returns a string that is all those strings concatenated together.

(casual)

Given an array of strings.

Declare an empty string variable.
Iterate through the collection one by one (or use the reduce method)..
  - add each string to the empty string while reassigning the empty string as the new value

Return the empty string variable.

(formal)

START

#given an array of strings.

SET empty_string = ""

ITERATE through array
  empty_string += each element of array

PRINT empty_string

END 

//////////////////////////////////////////////////////////////////

3. a method that takes an array of integers, and returns a new array with every other element

(casual)

Given an array of integers.

Transform the array using a method that mutates the caller.
  - return values from the array with odd indexes

Return the mutated array.

(formal)

START

TRANSFORM array
  IF index is odd?
    select the associated value
  ELSE
    go to the next iteration

PRINT array

END 

=end
  
