# future reference: I know the reference hash should be a constant, I was just feeling lazy


def string_to_signed_integer(str)
  ref = Hash.new { |hash, key| hash[key] = key.to_i }
  ('0'..'9').each { |str| ref[str] }
  negative = str.start_with?('-')
  str = str.split('').map { |str| ref[str] }
  num = 0
  str.each { |val| num = num * 10 + val }
  negative ? -num : num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100