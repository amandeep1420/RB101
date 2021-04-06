books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# order array of hashes based on the year of publication for each book - earliest to latest

p books.sort_by { |hash| hash[:published].to_i }


# didn't have to invoke #to_i since all the years were strings, but whatevs