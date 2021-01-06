def swap_name(string)
  string.split.reverse.join(", ")
end

swap_name('Joe Roberts') == 'Roberts, Joe'