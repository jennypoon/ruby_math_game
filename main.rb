require './math_question.rb'
require './player.rb'

class Game

  def initialize

  end


end
###########START OF GAME##############
puts "TwO-O-Player Math Game"
p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
null_p = Player.new("Null Player")

player = [null_p, p1, p2]
current_player_index = 1

gameOne = Game.new
puts "Welcome #{p1.name} and #{p2.name}, let's begin!"

while p1.lives !=0 || p2.lives !=0

question = MathQuestions.new
p "What is #{question.math_question_output}?"
result = gets.chomp

if question.math_evaluation(result.to_i)
  player[current_player_index].add_score
  puts "Correct!"
else
  player[current_player_index].lose_life
  puts "Wrong!"
end

end
