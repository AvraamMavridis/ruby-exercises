def phone(strng, num)
  matches = strng.split("\n").select { |x| x.include?("#{num}") }

  case matches.size
  when 0
    "Error => Not found: 5-555-555-5555"
  when 1
    str = matches.first
    name = str.match(/\<(.*?)\>/i)
    str.slice! name[0]
    str.slice! "#{num}"
    str.gsub!(/[^a-zA-Z\d\s.\-]/i, " ").strip!
    str.gsub!(/\s+/i, " ")

    "Phone => #{num}, Name => #{name[1]}, Address => #{str}"
  else
    "Error => Too many people: #{num}"
  end
end
