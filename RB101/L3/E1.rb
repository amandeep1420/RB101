Q1. [1, 2, 2, 3]

# when you puts an array, it comes out:
1
2
2
3
# you were right, but you weren't right enough. pay attention. you know this.

Q2.

! is the "not" operator; it returns a boolean object reflecting the opposite truthiness of
the object upon which it's used. ? is used as part of a ternary operator; basically a shorthand "if" 
that is followed by code to be executed depending on whether the statement evaluates to true or false (separated by a colon).

1. "not equal to" - use it when you want to determine equivalence, in a conditional, to return a boolean, etc.
2. a boolean reflecting the opposite truthiness of the user_name variable would be returned.
3. usually refers to a method that mutates the caller - but not always.
4. I have never used this; I am unsure.
5. establishes a ternary operator statement.
6. returns a boolean reflecting the truthiness of the object it's used on.

# it would be good to brush up on the specific verbiage used to describe these things.

Q3.

advice = "Few things in life are as important as house training your pet dinosaur."
advice[6] = "urgent"
puts advice

# wow, I'm an idiot - this is not an array, and you just replaced the sixth character in the string.

advice.gsub!("important", "urgent")

# better. I never use gsub, but managed to remember it after several moments of deliberation.

Q4.

1. deletes the element at index 1 - returning [1, 3, 4, 5]
2. deletes any elements matching the argument - returning [2, 3, 4, 5]

# almost right - these modify the array directly, but return the removed value. you're right about the end result, 
# but your verbiage/what you described is incorrect. 
# tricky, as these are mutating methods with no bang in the name.

Q5.

(10..100).include?(42)

# book uses .cover - a method specific to the range class that returns true if the object is within the given range.
# hmm.

Q6.

famous_words = "seven years ago..."
famous_words[0] = "Four score and "
=> "Four score and seven years ago..."

famous_words.split.unshift("Four score and").join(" ")
=> "Four score and seven years ago..."

# some more, from the book:

"Four score and " + famous_words

famous_words.prepend("Four score and ")       # nice

"Four score and " << famous_words

Q7.

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten

# they used flatten! to mutate.

Q8.

flintstones = flintstones.to_a[2]

# the derpy way.

flintstones.assoc("Barney")

# I had no idea this existed...


