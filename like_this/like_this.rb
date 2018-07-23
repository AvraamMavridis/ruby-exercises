def get_text(prefix, plural = "")
  "#{prefix} like#{plural} this"
end

def likes(names)
  case names.size
  when 0
    get_text("no one", "s")
  when 1
    get_text(names[0], "s")
  when 2
    get_text("#{names[0]} and #{names[1]}")
  when 3
    get_text("#{names[0]}, #{names[1]} and #{names[2]}")
  else
    get_text("#{names[0]}, #{names[1]} and #{names.size - 2} others")
  end
end
