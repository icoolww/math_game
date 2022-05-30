class Player

  attr_reader :name
  attr_accessor :lives

  def initialize (num)
    @name = "Player #{num}"
    @lives = 3
  end

end

# player1 = Player.new("1")
# player1.lives -= 2
# p player1.lives
# p player1