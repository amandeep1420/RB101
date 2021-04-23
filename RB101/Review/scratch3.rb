arr = [1, 2, 3, 4, 5]

results = []

(1..arr.size).each do |n|
  arr.each_cons(n) do |subarr|
    results << subarr
  end
end

p results