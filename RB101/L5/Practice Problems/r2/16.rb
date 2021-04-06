def generate_uuid
  template = [8, 4, 4, 4, 12].map { |count| ('x' * count) }.join('-').split('')
  hex = (0..9).to_a.map { |num| num.to_s }.concat(('a'..'z').to_a)
  template.map { |char| char == 'x' ? hex.sample : char }.join('')
end