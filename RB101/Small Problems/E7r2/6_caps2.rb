=begin

P
  - modify the method from the previous exercise so it ignores non-alpha
    chars when determining whther it should uppercase or lowercase each letter.
    the non-alpha chars should still be included in the return value;
    they just don't countwhen toggling the desired case.
...
C
=end

def staggered_case(string, alphas=true)
  count = 0
  string.split('').map do |char|
    alphas ? (count += 1 unless !('a'..'z').cover?(char.downcase)) : count += 1
    count.odd? ? char.upcase : char.downcase
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('I Love Launch School!', false) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 NuMbErS'