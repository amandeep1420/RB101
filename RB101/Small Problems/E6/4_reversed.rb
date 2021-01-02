def reverse!(list)
  list.sort! { |a, b| list.index(b) <=> list.index(a) }
end

# I am honestly quite proud of my solution for this one :)
# book solution for this talks about parallel assignment - we never use this, might be good to commit to memory
# also #divmod, lol....can't believe that one