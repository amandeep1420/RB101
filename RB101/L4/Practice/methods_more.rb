1.

an empty array - nil is the last expression in the block, so the block returns nil for every iteration - meaning no values from the
collection are selected.
wrong - puts wasn't used.' come on now. a string by itself is truthy, so the returned collection would've been the exact same as the original.' focus up.

2. 

looking at docs because I'm not familiar with #count...'
looks like, if a block is given, count collects all elements that evaluate to true within the block and gives, well, a count of them
"counts the number of elements for which the block returns a true value"
the returned value here would be 1, btw

3.

so the last expression in the block is puts num
puts returns nil
reject deletes every element that evaluates to true within the block, and returns nil otherwise
no elements were deleted, since every iteration returned nil due to the puts statement
so, nil is returned, and the original collection is unaffected

...............................

I read the description for reject!, not reject.............

should return the original array since every iteration returns nil,
which is correct

4.

{ 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }, from what I can gather....
from what I recall, each_with_object returns the collection object that's used...

phew, we were correct'. good work!

5.

looks like shift removes the key-value pair that was inserted into the hash first, and returns it as a two-value array in the format of 
[key, value]. looks like it's also a mutating method'...

this is what I gathered from the docs, time to check if I'm right

Looks like we can use the language 'first' when referring to the first key-value pair...the book uses said language, at least'...

6.

1 

#pop removes and returns the last value in an array - the chained call uses the return value of the last call, which is a single element

.SIZE, AAHHHHHHHHHHHHHHHHHHHHHHHHHHHH

we were on the right track, but we considered the use of size in the context of an array for some reason - #pop returns the last element itself,
not in the context of an array - so we're calling size/length on a string, which returns the number of characters

da##it! you're better than this! come on! I believe in you!

7.

block's return value is the last expression in the block'
last expression in the block is num.odd?, which returns a boolean
.any? returns true if any of the elements within the collection return true after being evaluated in the block

so,
the block returns a boolean,
and the any? method call will return true in this case
looks like puts num will run, so the output should be
1
2
3
=> true

we were very, very close - looks like any? short-circuits after the first instance of true being returned from the block

I'd say we did good with this one.'

8.

based on the docs, #take returns the first n elements of the array - n being an argument that's passed into the method call
from what I can gather from the docs (which don't show much)', this isn't a destructive method....it just returns a new collection
containing n elements, starting from index 0'

cool, we were correct with our assumption - looks like the book wanted us to test in irb just to be safe

9.
***TRICKY***

won't it just be the original collection?' feel like I'm missing something..'
nothing specified for what happens if the if statement evaluates to false.....

I was very wrong. Reading now.

- map always returns an array
- when none of the conditions in an if statement evaluate as true, the statement returns nil...got it

10.

[1, nil, nil]

# thank goodness, we were right - out on a high note, baby

