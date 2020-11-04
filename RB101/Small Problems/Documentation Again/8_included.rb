# my answer:

a = [5, 9, 3, 11]

puts a.min(2)       # guessed it before looking at the documentation...let's find it, too.

# had to look in the 'included modules' section to find the Enumerable 'mixin', wherein the method was located.

# Ruby uses something like MI, but without the worst of the pitfalls: mix-in modules. 
# They provide a way for classes of different types to share behaviors without using inheritance (inheritance refers to pulling from superclasses).