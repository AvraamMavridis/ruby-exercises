def iq_test(numbers)
  arr = numbers.split(" ")
  nums = arr.map(&:to_i).map(&:even?)
  nums.index(nums.count(true) === 1 ? true : false) + 1
end
