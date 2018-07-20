def choose_best_sum(t, k, ls)
  sum = lambda { |arr| arr.inject(&:+) } 
  ls.combination(k).map(&sum).select{ |x| x <= t}.max
end
