def diamond(num)
  splat_count = 1
  until splat_count == num
    puts "#{"*" * splat_count}".center(num)
    splat_count += 2
  end
  until splat_count < 0
    puts "#{"*" * splat_count}".center(num)
    splat_count -= 2
  end
end

# didn't do FE today - do it in the future, would be good