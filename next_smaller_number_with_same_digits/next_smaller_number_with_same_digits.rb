def next_smaller n
  digits = n.digits.sort

  while (n = n - 1) > 0 and n.digits.length == digits.length do
    return n if digits == n.digits.sort
  end

  -1
end
