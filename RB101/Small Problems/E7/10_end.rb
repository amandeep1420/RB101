def penultimate(string)
  a = string.split(" ")
  a[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

# do the FE next time around

# refactored, below

def penultimate(string)
  string.split[-2]
end
