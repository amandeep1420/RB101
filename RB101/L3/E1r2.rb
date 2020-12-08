Q1.

1
2
2
3

Q2.

! is the 'not' operator; it returns the opposite boolean value resulting from the object, expression, etc. it's called on.
? is part of the if/else 'ternary' operator in ruby; it is followed by specified output for a truthy return value, a colon, then specified output for 
a falsey return value.
1. "is not equal to", may be used when checking for equivalence, while writing conditional statements as part of evaluation criteria, etc.
2. returns the opposite boolean value of what the object currently has
3. typically refers to a method that mutates the caller, but not always; this is not a convention of method naming, but rather an incidental element
of how some methods have been named in ruby
4. hmm..
5. part of the ternary operator
6. return the object's boolean equivalent, boolean equivalent boolean equivalent boolean equivalent
okay

Q3.

advice.gsub("important", "urgent") 

# you used the non-mutating version - keep that in mind. .gsub! mutates the caller.

Q4.

First one deletes the value at index 1; second deletes all instances of the specified element.

# correct; note that delete and delete_at both mutate the caller.

Q5.

# not span, not span.....COVER

(10...100).cover?(42)

I specifically used three ellipses instead of two as the prompt said "between", not indicating inclusion of the range delimiters.

Q6.

set other phrase as variable, then other_phrase.concat(famous_words)
set other phrase as variable, then << famous_words
set other phrase as variable, then use concatentation ( var + var )
PREPEND is the one I forgot, dangit. call prepend on famous_words, argument is what you wanna add to beginning

Q7.

flintstones.flatten! # mutates caller

Q8.

# I had to use .methods to see the list, but I picked out .assoc after scanning it

flintstones.assoc("Fred")

# correct, except they wanted Barney, not Fred. reading is hard!


