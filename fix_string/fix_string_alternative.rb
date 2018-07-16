def solve s
  s.count("A-Z") > (s.length/2) ? s.upcase : s.downcase
end
