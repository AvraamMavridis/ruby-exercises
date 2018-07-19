class SnakesLadders
  attr_accessor :positions, :playing_player, :has_winner

  BOARD = {
    2 => 38,
    7 => 14,
    8 => 31, 
    15 => 26, 
    21 => 42, 
    28 => 84, 
    36 => 44, 
    51 => 67, 
    71 => 91, 
    78 => 98, 
    87 => 94,
    16 => 6, 
    46 => 25, 
    49 => 11, 
    62 => 19, 
    64 => 60, 
    74 => 53, 
    89 => 68, 
    95 => 75, 
    92 => 88, 
    99 => 80,
  }

  def initialize
    @positions = { :player1 => 0, :player2 => 0}
    @playing_player = :player1
    @has_winner = false
  end

  def switch_players
    return self if @die1 == @die2

    if @playing_player == :player1
      @playing_player = :player2
    else
      @playing_player = :player1
    end
    self
  end

  def is_over
    "Game over" if @positions[:player1] == 100 || @positions[:player2] == 100
  end

  def set_die_position
    newPosition = @positions[@playing_player] + @die1 + @die2

    if (newPosition <= 100)
      @positions[@playing_player] = newPosition
    else
      @positions[@playing_player] = 100 - (newPosition - 100)
    end

    self
  end

  def set_move_position
    move = BOARD[@positions[@playing_player]]
    @positions[@playing_player] = move if (move)
    self
  end

  def set_return_text
    num = @playing_player.to_s.slice(-1)
    @text = "Player #{num} is on square #{@positions[@playing_player]}"
    @text = "Player #{num} Wins!" if (@positions[@playing_player] === 100)
    self
  end

  def play(die1, die2)
    @die1 = die1
    @die2 = die2
    return self.is_over if self.is_over
    
    self.set_die_position
      .set_move_position
      .set_return_text
      .switch_players

    return @text
  end
end
