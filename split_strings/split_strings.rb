def solution(str)
  arr = []
  str.split("").each_with_index do |x,i|
    if i % 2 == 0
      arr.push(x)
    else
      index = i-(i/2 + 1)
      arr[index] = arr[index] + x
    end
  end
  unless str.length % 2 == 0
    arr[arr.length-1] = arr[arr.length-1] + "_"
  end
  arr
end
