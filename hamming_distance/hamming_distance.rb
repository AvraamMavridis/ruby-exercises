def hamming(a, b)
  arr = a.split("")
  arr2 = b.split("")
  count = 0
  while l = arr.pop()
    k = arr2.pop()
    count += l === k ? 0 : 1;
  end
  count
end
