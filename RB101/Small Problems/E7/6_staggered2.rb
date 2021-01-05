def staggered_case(str)
  new_str = ''
  upcase = true
  str.chars.each_with_index do |_, idx|
    upcase ? new_str << str[idx].upcase : new_str << str[idx].downcase
    upcase = !upcase if ("A".."Z").include?(new_str[-1]) || ("a".."z").include?(new_str[-1])
  end
  new_str
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'