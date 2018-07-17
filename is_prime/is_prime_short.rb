def isPrime(num)
  return false if num < 2
  (2...num).to_a.select { |x| num%x === 0 }.empty?
end
