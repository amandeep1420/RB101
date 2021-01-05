def center_of(str)
  str.size.odd? ? str[str.size * 0.5] : str[(str.size / 2) - 1, 2]
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'