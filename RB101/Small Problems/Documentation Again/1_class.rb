# my answer:

File::path    # returns the string representation of a given path
File#path     # 'returns the pathname used to create FILE as a string...on an object.

# oops - book wasn't looking for a literal definition comparison. see below:

# File::path is a class method; File#path is an instance method.
# File is the name of the class in question.
# Class methods are called on the class itself; instance methods are called on objects.

# I'm sure this will become clearer over time. gotta pay attention when reading the docs.