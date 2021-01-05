def staggered_case(str, idx)
  new_str = ''
  idx = 0
  while idx < str.size
    idx.even? ? new_str << str[idx].upcase : new_str << str[idx].downcase
    idx += 1
  end
  new_str
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# we could do the FE...but....blah....hmm....ugh....fiojdfiojd....hm...
# I know that you just set a default argument and go for