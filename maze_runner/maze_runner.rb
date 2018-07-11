def maze_runner(maze, directions)
  starting_array = maze.find_index {|x| x.include?(2)}
  starting_point = maze[starting_array].find_index {|x| x == 2}
  
  move = nil
  state = nil

  while(move = directions.shift) do
    case move
    when "N"
      starting_array -= 1
    when "S"
      starting_array += 1
    when "E"
      starting_point += 1
    when "W"
      starting_point -= 1
    end

    state = maze[starting_array]

    return "Dead" if state.nil?
    state = state[starting_point]
    
    return "Dead" if state.nil? or state == 1
    return "Finish" if state === 3
  end

  "Lost"
end
