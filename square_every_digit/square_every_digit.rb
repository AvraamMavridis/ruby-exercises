def square_digits num
  num.digits.reverse.map {|x| x*x}.join.to_i
end
