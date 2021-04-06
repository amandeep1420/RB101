arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# without using array#to_h, write code that will return a hash 
# where the key is the first item in each sub array and the value is the second item

  j =  arr.each_with_object({}) do |subarr, hash|
      hash[subarr[0]] = subarr[1]
    end

p j