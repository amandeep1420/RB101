def create_uuid(uuid = "00000000-0000-0000-0000-00000000")
  uuid.chars.map do |char|
    if char == '-'
      char
    else
      rand(1..2) == 1 ? ("a".."f").entries.sample : rand(0..9)
    end
  end.join
end

create_uuid
create_uuid
create_uuid

