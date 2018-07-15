def non_consec_pairs(myarray)
  if(myarray.size < 2) 
    return []
  end

  arr = myarray.each_with_index.map do |x, i| 
    l = myarray.slice(i, myarray.size)
    [x].product(l)
  end
  arr.flatten(1).select{ |(a,b)| (a.ord-b.ord).abs > 1 }
end
