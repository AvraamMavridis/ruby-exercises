# Gets arrays of size = 4, and checks if all the elements
# are the same, if yes, we have a winner
def is_win(arr)
  return arr.uniq.size === 1
end

# Get a list of arrays representing rows, colums or diagonas
# generate fours and check if exist winner
def determine_winner(arrays)
  for array in arrays
    tetrades = array.each_cons(4).to_a
    winner = tetrades.select { |x| is_win(x) }.flatten(1)
    unless winner.empty?
      return winner[0]
    end
  end
  return "Draw"
end

# Check if there is winner by column
def by_column(columns)
  determine_winner(columns)
end

# Check if there is winner by row
def by_row(arr)
  rows = (0..5).reduce([]) do |r, i| 
    r.push(arr.map { |column| column[i] })
    r
  end
  rows.select { |row| row.size > 3}
  determine_winner(rows)
end

# Creates a 2 dimensional array that represents the board
def create_representation(pieces_position_list)
  arr = (0..6).to_a.map { |x| [] }
  positions = ('A'..'G').to_a.each_with_index.reduce({}) { |x, i| x.merge(Hash[*i]) }
  pieces_position_list.reduce(arr) do |x, m|
    (pos, color) = m.split("_")
    arr[positions[pos]] << color
    arr
  end
end

# Get a list of diagonals
def get_diagonal(representation)
  diagonals = []
  for k in (0..7)
    arr = []
    arr2 = []
    for i in (0..6)
      for j in (0..5)
        if (i == (j - k))
          arr << representation[i][j]
        end
        if ((i-k) == j)
          arr2 << representation[i][j]
        end
      end
    end
    diagonals.push(arr, arr2)
  end

  determine_winner(diagonals)
end

# Determine who is the winner
def who_is_winner(pieces_position_list)
  representation = create_representation(pieces_position_list)

  diagonal = get_diagonal(representation)
  on_row = by_row(representation)
  on_column = by_column(representation)

  [diagonal, on_column, on_row].select { |x| x != 'Draw' }.first
end
