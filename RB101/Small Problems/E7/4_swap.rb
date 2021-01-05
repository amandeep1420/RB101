def swapcase(string)
  string.split("").map do |char|
  char == char.upcase ? char.downcase : char.upcase
  end.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'