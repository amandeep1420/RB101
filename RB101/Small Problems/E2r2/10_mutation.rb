=begin

from what I recall; arrays are collections of objects. the array objects (container objects)
themselves are unique, but the objects they hold are not/they can be pointed to or referenced by 
multiple arrays. here, we've pushed each object contained within array1 to array2; these are strings,
so they are mutable - here, we should observe ruby acting in 'pass by reference' mode.
when the second Array#each call occurs, the objects referenced by both array1 and array2 are mutated;
that is to say that, due to the first Array#each call, both arrays contain references to the exact same objects.

I expect the puts call with array2 passed in as an argument to output the following:

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

I got this one correct and I think my explanation was decent (we will obviously sharpen it in the coming weeks)
this makes me feel...vindicated.

=end