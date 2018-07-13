def hamming(a, b)
  (0..a.length).count { |i| a[i] != b[i] }
end
