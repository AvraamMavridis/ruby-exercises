def get_carpark_section(carpark)
  index = carpark.find_index { |floor| floor.include?(2) }
  carpark.slice(index, carpark.length)
end

def get_stairs_position(floor)
  p floor
  stairs_position = floor.find_index { |p| p == 1 }
  stairs_position = stairs_position ? stairs_position : floor.length - 1
end 

def add_down_move(movements)
  last_position = movements.length - 1
  last = movements[last_position]
  if(last && last.start_with?('D'))
    movements[last_position] = "D#{(+movements[last_position][1]).to_i + 1}"
  else
    movements.push('D1')
  end
end

def add_move(floor, current_location, movements, is_last)
  stairs_position = get_stairs_position(floor)
  dist = (current_location - stairs_position).abs

  if(stairs_position === current_location)
    !is_last && add_down_move(movements)
  elsif(stairs_position < current_location)
    movements.push("L#{dist}")
    !is_last && add_down_move(movements)
  else
    movements.push("R#{dist}")
    !is_last && add_down_move(movements)
  end

  stairs_position
end


def escape(carpark)
  carpark = get_carpark_section(carpark)
  movements = []
  currentFloor = carpark.shift()
  current_location = currentFloor.find_index { |p| p == 2 }

  while(carpark.length != 0) do
    current_location = add_move(currentFloor, current_location, movements, false)
    currentFloor = carpark.shift()
  end

  add_move(currentFloor, current_location, movements, true)

  movements
end
