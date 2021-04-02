=begin

P
  - write a method that takes one arg, the total number of switches, and returns
    an array that identifies which bank are on after n reps
    (see book for prompt description)
  - input: "n" (representing number of bank + number of reps)
  - output: array with bank that are on
  - note: n will always be greater than 0 and an integer (based on prompt)
E
  - see book
D
  - array
A
  - establish array of bank using n...
  - hash is best here
  - first, create hash
C
=end

def thousand_lights(n)
  bank = Hash.new { |hash, key| hash[key] = false }
  (1..n).each { |light| bank[light] }
  divisor = 1
  until divisor > n
    bank.map { |light, switch| bank[light] = !switch if light % divisor == 0 }
    divisor += 1
  end
  bank.select { |light, status| status == true }.keys
end


def thousand_lights(n)
  bank = Hash.new { |hash, key| hash[key] = false }
  (1..n).each { |light| bank[light] }
  1.upto(n) do |round|
    bank.map { |light, switch| bank[light] = !switch if light % round == 0 }
  end
  bank.select { |light, status| status == true }.keys
end

p thousand_lights(1000) 