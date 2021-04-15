munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

a = munsters.values.each_with_object([]) do |hash, arr|
  arr << hash['age'] if hash['gender'] == 'male'
end.sum

p a

# right concept - they used each_value and initialized a separate variable to track the age total