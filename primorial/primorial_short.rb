require 'prime'

def num_primorial(n)
  Prime.first(n).reduce(:*)
end
