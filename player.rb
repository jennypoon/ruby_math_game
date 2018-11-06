class Player

attr_accessor :lives, :name, :score

  def initialize(name)
    @lives = 3
    @name = name
    @score = 0
  end

  def lose_life
    @lives -= 1
  end

  def add_score
    @score += 1
  end

end