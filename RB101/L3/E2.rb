Q1.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.include?("Spot")

ages.any? { |k, v| k == "Spot" }

ages.has_key?("Spot")

ages.key?("Spot")

ages.member?("Spot")

.include?, .key?, .member?

# could only think of .include? without looking at docs.

Q2.

munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase           # had to find this one, never used it before.
munsters_description.capitalize
munsters_description.downcase
munsters_description.upcase

# didn't use mutating methods because I wanted to run them all consecutively in irb, but I understood that they should be used.

Q3.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# took me a hot minute to remember, but I got it without looking through the method list.

Q4.

advice = "Few things in life are as important as house training your pet Dinosaur."

advice.include?("Dino")

# they used .match? - can't just use .include? for everything, lol...but it works here, too.
# note: this will return true if any substrings match - applies to both methods.

Q5.

%w(Fred Barney Wilma Betty BamBam Pebbles)

Q6.

flintstones << "Dino"

flintstones.push("Dino")

Q7.

******REVIEW THIS ONE*******

answers:

flintstones.push("Dino").push("Hoppy")    # push returns an array, so we can chain calls

flintstones.concat(%w(Dino Hoppy))        # concat can push multiple array elements without creating a sub-array

Q8.

advice = "Few things in life are as important as house training your pet dinosaur."

1. unsure.
2. advice.slice!("Few things in life are as important as ")
3. it returns the argument from the string, but leaves the string unmutated.

# I did it the derpy way - book solution below.

advice.slice!(0, advice.index('house'))

Q9.

statement = "The Flintstones Rock!"
statement.count("t")

# thank goodness.

Q10.

# guessing they used rjust or ljust?

# so close...they used .center :')

title.center(40)