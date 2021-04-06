hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# write code to return an array containing the colors of the fruits and the sizes of the veggies
# sizes should be uppercase, colors should be caps
# desired result: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

hsh.map do |_, qualities|
  if qualities[:type] == 'fruit'
    qualities[:colors].map { |color| color.capitalize }
  else
    qualities[:size].upcase
  end
end