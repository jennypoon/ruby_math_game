class Player

attr_accessor :lives, :name, :score

  def initialize(name)
    @lives = 3
    @name = name
    @score = 0
  end

  def lose_life
    @live -= 1
  end

  def score
    @score += 1
  end

end

# p1 = Player.new("Player 1")
# p2 = Player.new("Player 2")
