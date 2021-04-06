arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# reference the letter 'g' for each array

p arr1[2][1][3]

p arr2[1][:third][0]

p arr3[2][:third][0][0]

p hsh1['b'][1]

p hsh2[:third].keys.first # or hsh2[:third].key(0) -> returns the first key that has the given value, which we gave as 0 (or returns nil if no key has it)