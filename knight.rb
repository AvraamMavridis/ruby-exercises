def possible_positions(str)
  positions = []
  pos = { 
    "a" => 1, 
    "b" => 2,
    "c" => 3, 
    "d" => 4,
    "e" => 5,
    "f" => 6,
    "g" => 7,
    "h" => 8
  }

  ch = pos.fetch(str[0])
  num = str[1].to_i

  positions << [ch + 2, num + 1]
  positions << [ch + 2, num - 1]
  positions << [ch - 2, num + 1]
  positions << [ch - 2, num - 1]
  positions << [ch + 1, num + 2]
  positions << [ch - 1, num + 2]
  positions << [ch + 1, num - 2]
  positions << [ch - 1, num - 2]

  filter = -> (x) { (1..8).include?(x)  }
  filterArr = -> (x) { filter.(x[0]) && filter.(x[1]) }
  positions.select(&filterArr)
    .map { |x| "#{pos.key(x[0])}#{x[1]}" }.sort
end

def find_path(start, finish, visited)
  visited << start
  positions = possible_positions(start)
  
  if positions.include?(finish)
    return 1
  else
    rem = positions - visited
    if(rem.size)
      diff = rem.map { |x| find_path(x, finish, visited) }.min
      return 1 + (diff || Float::INFINITY)
    end
  end
end

def knight(start, finish)
  find_path(start, finish, [])
end

p knight("a1", "f4") == 4
