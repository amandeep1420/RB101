=begin

P
  - write a method that determines the mean of the three scores passed into it,
    and returns the ltter value associated with that grade
  - input: three integers
  - output: string
  - note: all values will be between 0 and 100
E
  - see book
D
  - n/a
A
  - case statement or conditional is perfect here
  - first, calculate mean
  - next, evaluate for score
    - is there a slick way of doing this that isn't a pile of if/else statements?
  - whatever, if/else statements it is
  - 
  
  
  
why did I not remember that you could use ranges in case statments to automatically 
check whether the object being used for the statement falls within the specified range?
hm..

ex.

case average
when 90..100 then 'A'

that sort of thing

not sure why I didn't remember that...