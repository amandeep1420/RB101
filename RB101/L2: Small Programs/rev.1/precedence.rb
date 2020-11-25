=begin

3 + 5 * 7 = 38. Why the order? Because of operator precedence - Ruby, just like math, has it.

Precedence determines the meaning of expressions using operators (so, everything).
Everything is either an operator (*, /, +, -, so on) or an operand (yes, exceptions, but just think about it like this for this section).

Parentheses can override anything, though - think of them as having the highest possible precedence.
We can turn 3 + 5 * 7 into (3 + 5) * 7 easily using them.

Another way to think of precendence - it controls the order of evaluation.
Equal operators? Evaluation occurs left-to-right...usually. Exceptions occur with ||, &&, ternary operators, etc...

The best way to think of operators: the mechanism by which Ruby determines which operands get passed to which operator.

Okay.

Regarding operators: those with higher precedence are said to 'bind' more tightly to their operands.
So - * binds more tightly than +, for example.
Don't confuse this with binding.pry, lol. Separate things entirely.

////

So, precedence is very important - however, there are other things that affect how code runs.
Right-to-left evaluation, left-to-right evaluation, short-circuiting, and ternary expressions all influence the order of evaluation as well.

Consider the following code and what it returns:

=end

def value(n)
  puts n
  n
end

puts value(3) + value(5) * value(7)

=> 3
=> 5
=> 7
=> 38

=begin

From the first three lines of output, you might think Ruby is evaluating left-to-right - however, the final output says otherwise!
You can only get the final result if Ruby evaluated value(5) * value(7) first. So, what gives?

It's a little bit of a few things.
The first issue is that operators such as * and + need values that they can work with.
Method invocations, like value(), are not actual values. We can't invoke the * operator until we know the values those methods return.
Hmm, okay.
           ___________________(expression that results in a numeric value)        
          |            |
In an arithmetic expression, Ruby first goes through an expression left-to-right and evaluates everything possible without calling any operators.
Thus, it evaluates value(3), value(5), and value(7) first, in that order.
Once it has those values, it deals with precedence and re-evaluates the result.

////

So, precedence kicks in once Ruby has run through an expression l-to-r and evaluated everything it can without calling operators.
Word.
                                   _______________(boolean operators, logical operators... ||, &&, !)
                                  |       |
Moving on: ternary operators(?:) and short-circuit operators.
Both are a common source of unexpected behavior when it comes to precedence.
Consider the following expressions:
=end

3 ? 1 / 0 : 1 + 2  # raises error ZeroDivisionError
5 && 1 / 0         # raises error ZeroDivisionError
nil || 1 / 0       # raises error ZeroDivisionError

# what happens if we modify things so that 1 / 0 isn't needed?

nil ? 1 / 0 : 1 + 2  # 3
nil && 1 / 0         # nil
5 || 1 / 0           # 5

# in all three cases, 1/0 no longer gets executed - even though operator precedence would suggest that it should be evaluated first.
# expression #1: 1/0 is the truthy operand for the ?: - nil ain't truthy, so it doesn't run.
# expression #2: the && operator short-circuits because the first operand is falsey.
# expression #3: the || operator short-circuits because the first opreator is truthy.

# This is simply how Ruby works - ?:, &&, and || don't evaluate subexpressions unless needed.

=begin
////

Alright, time to slightly alter our understanding of curly braces and do...end blocks.
:')

Blocks have the lowest precedence of all operators; as fate would have it, however, {} has slightly higher precedence than do...end.
This has an effect on which method call the block gets passed to - see below for book examples:
=end

array = [1, 2, 3]

...

p array.map { |num| num + 1 }      #  outputs [2, 3, 4]
                                   #  => [2, 3, 4]

vs.                             # not only is the p output different, but the                                             
                                # return value passed into p is different, too.
p array.map do |num|                                                                              p array.map   # outputs <Enumerator: [1, 2, 3]:map>
  num + 1                   #  outputs #<Enumerator: [1, 2, 3]:map>                                             vs.
end                           #  => #<Enumerator: [1, 2, 3]:map>  #                                p array.map do |num|
                                                                                                     num + 1             
=begin                                                                                             end          # outputs <Enumerator: [1, 2, 3]:map>             
                                                                                                                |
Argh. Okay, let's continue.                                           (side note: p doesn't take blocks - methods that don't take blocks ignore them)

Basically, the binding of a method's argument and the method name (the return value of array.map binding to p) is slightly tighter than 
the binding between a method call and a do...end block. 
Thus, array.map itself executes first, but then the return value -and- the block get passed to p as separate arguments.

A {} block, on the other hand, has higher priority - so it binds more tightly to array.map than p does.
Therefore, when we use {}, array.map is called with the block, then the return value of that call gets passed to p.

Word. Okay. I'm getting it.

Here's an attempt at visualizing it:
=end

array = [1, 2, 3]

(p(array.map)) do |num|
  num + 1                           #  <Enumerator: [1, 2, 3]:map>
end                                 #  => <Enumerator: [1, 2, 3]:map>

vs.

p(array.map { |num| num + 1 })      # [2, 3, 4]
                                    # => [2, 3, 4]

=begin
////

Whew. Okay. Moving on.

Let's talk about the tap method.

Wouldn't it be great if there was a method that would help you validate all of this? 
Enter: the object instance method 'tap', an extremely useful debugging tool.
It passes the calling object into a block, then returns that object!
Makes sense, right? Right!?
...
Yeah, no.
Let's read for a minute.

OH!
Wait, what? Why wouldn't we just call the object or run .inspect or something?
Hmm...

Okay, so .tap takes whatever object called it, passes that object into a block, then returns that same object.
It's a testing method! A testing method!! Okay, I think I'm getting it!! Messed around in irb a bit.

Definitely going to need practice with it, though...

I hope we practice using it in the exercise section or something, hehe.

Book examples using .tap below:
=end

(1..10)                 .tap { |x| p x }   # 1..10
 .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
 .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]

=begin


Long story short: use parentheses.

Use them.

Seriously, just use parentheses.

Either you'll misremember precedence rules, or someone else will when reading your code, or whatever - bugs will be introduced, then missed, then dead.

Use. Parentheses.

Use them! 

~_~
