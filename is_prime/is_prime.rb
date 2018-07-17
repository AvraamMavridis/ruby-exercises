def isPrime(num)
  return false if num < 2 
  is_prime = true
  
  i = 2
  while(i<num)
    if(num%i === 0)
      is_prime = false
      break
    end
    i += 1
  end

  is_prime
end
