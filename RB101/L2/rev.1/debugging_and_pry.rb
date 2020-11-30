=begin

***re-read the lesson: https://launchschool.com/lessons/a0f3cd44/assignments/e742d6***

- pry is a powerful REPL in Ruby that you can use for debugging; it stops the code wherever it's called and allows you to inspect the state of your code.

- two steps to using it:
    - first, type require "pry" somewhere prior to the code to be inspected
    - then, type binding.pry where you want execution to stop
    - Ctrl + D to let the program continue running, or exit-program if there are loops, etc. and you want to stop immediately

=end

require "pry" # add this to use Pry

counter = 0

loop do
  counter += 1
  binding.pry if counter == 4
  break if counter == 5
end
