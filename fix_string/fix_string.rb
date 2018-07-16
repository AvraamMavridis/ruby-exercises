def solve s
  s.chars.count { |x| x == x.upcase } > (s.length/2) ? s.upcase : s.downcase
end
