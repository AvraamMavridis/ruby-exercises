def unique_in_order(iterable)
  arr = iterable.is_a?(String) ? iterable.chars : iterable
  new_element = nil
  new_array = []

  while arr.size > 0
    k = arr.shift()
    if new_element != k
      new_array << k
      new_element = k
    end
  end

  new_array
end
