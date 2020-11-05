# booleans convey truthiness - nothing else. their only purpose is to convey 'true' or 'false' so we can build conditional logic.

# they have classes behind them (TrueClass and FalseClass), just like everything else in Ruby. 
# see below:

=begin
true.class          # => TrueClass
true.nil?           # => false
true.to_s           # => "true"
true.methods        # => list of methods you can call on the true object

false.class         # => FalseClass
false.nil?          # => false
false.to_s          # => "false"
false.methods       # => list of methods you can call on the false object
=end

# in real code, we won't explicitly use true or false objects in conditionals; we'll be evaluating expressions or method calls or what have you instead.
# these things evaluate to true or false.

///////////
LOGICAL OPERATORS

=begin

Logical operators return either a truthy or falsey value when evaluating two expressions.

** &&: the 'and' operator. Returns true if both expressions being evaluated are true. **

- true && true => true
- true && false => false
- num = 5 => 5; num < 10 && num.odd? => true; num > 10 && num.odd? => false

Note: num > 10 didn't need to be in parentheses; Ruby's order of precendence considers > to be higher than &&. 

Note: you can chain AS MANY EXPRESSIONS AS YOU'D LIKE WITH &&; code will evaluate left to right. All expressions must be true to return true.

num < 10 && num.odd? && num > 0 && false => false

** ||: the 'or' operator. Returns true if eithe rone of the evaluated objects is true. **

- true || true => true
- false || false => false
- true || false => true
- false || true => true

** 'Short Circuiting': && and || will stop evaluating once they can guarantee a return value - see below. **

- false && 3/0 => false; the 3/0 is never evaluated (no ZeroDivisionError is returned) because the expression short-circuited to return false.
- false || 3/0 => ZeroDivisionError because || short-circuits only when it encounters the first true expression.
- true && 3/0 => ZeroDivisionError because && checks all expressions for truthiness.

=end

///////////
TRUTHINESS

=begin

Truthiness is more than just the 'true' object; ** everything in Ruby is truthy other than 'false' and 'nil'. **
I REPEAT: EVERYTHING IN RUBY IS TRUTHY other than FALSE and NIL.

Keep in mind: truthiness =/= the 'true' object. Truthiness is a condition; the true object is, well, an object.

Example below:
=end 

num = 5

if num
  puts 'valid number'
else
  puts 'error!'
end 

output = 'valid number'

=begin
Yes, running that code does indeed output 'valid number'; Ruby considers any integer to be 'truthy'. 
However, this does not mean that the num variable == true! See the distinction? 

This also means that 0 is considered truthy in Ruby (which is not the case in some other languages). 

Word.

=end


