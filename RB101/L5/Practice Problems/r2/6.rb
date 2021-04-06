munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# print info for each family member in the following format:

# (Name) is a (age)-year-old (male or female).

munsters.each do |person, info|
  puts "#{person} is a #{info['age']}-year-old #{info['gender']}."
end

