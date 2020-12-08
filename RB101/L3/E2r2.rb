Q1. 

ages.member?("Spot")
ages.key?("Spot")
ages.include("Spot")

# 100% right. good job.

Q2.

.swapcase
.capitalize
.downcase
.upcase

# did not make note of the detail regarding execution on the original variable; all of these are non-mutating and have ! forms that mutate.
# I understand you're trying to rush through review, here, but what's the point if you're going to overlook key details in the prompt.
# goodness gracious

Q3.

ages.merge!(additional_ages)

could also declare the individual keys with = and the accompanying value

Q4.

# I ended up using .include?, but I feel like the answer is something else....

MATCH! I guessed match after reviewing the listed methods from .methods, but took the false return as indicating it wasn't the 
one I was looking for...even though that matched (heh) the desired output.
.match?
.match?....not perfect, as it will match substrings per book explanation'

Q5.

%w(Fred Barney Wilma Betty BamBam Pebbles)

ezpz

Q6.

.push("Dino") or << "Dino" or .concat("Dino") 

Q7. 

chain Array#push method calls, or put them both in an array, then use flintstones.concat(array) to add them together

Q8.

use .slice to return removed string, or .slice! to mutate
I used slice from the get-go due to book prompt

Q9.

statement.count("t")


Q10.

title.center(40)

