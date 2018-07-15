# Generate prime numbers
class Prime
  include Enumerable

  def each
    i = 2
    while(true)
      j = 2
      is_prime = true
      while(j<i)
        if(i.to_f%j == 0)
          is_prime = false
          break
        end
        j += 1
      end

      if is_prime
        yield i
      end
      i += 1
    end
  end
end

def num_primorial(n)
  Prime.new.lazy.first(n).reduce(1) {|x, i| x * i }
end
