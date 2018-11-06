require './math_question.rb'
require './player.rb'
require './endgame.rb'

class Game
  puts "TwO-O-Player Math Game"
  p1 = Player.new("Player 1")
  p2 = Player.new("Player 2")
  null_p = Player.new("Null Player")

  player = [null_p, p1, p2]
  current_player_index = 1

  gameOne = Game.new
  puts "Welcome #{p1.name} and #{p2.name}, let's begin!"
  puts "#{player[current_player_index].name}"

  while player[current_player_index].lives > 0

  question = MathQuestions.new

  puts question.math_question_output

  result = gets.chomp

  if question.math_evaluation(result.to_i)
    player[current_player_index].add_score
    puts "Correct!"
    puts "#{player[current_player_index].name} score: #{player[current_player_index].score} lives: #{player[current_player_index].lives} "
    puts "#{player[current_player_index * -1].name} score: #{player[current_player_index * -1].score} lives: #{player[current_player_index + 1].lives}"
    puts "========"
    current_player_index = current_player_index * -1
  else
    player[current_player_index].lose_life
    puts "Incorrect!"
    puts "#{player[current_player_index].name} score: #{player[current_player_index].score} lives: #{player[current_player_index].lives} "
    puts "#{player[current_player_index * -1].name} score: #{player[current_player_index * -1].score} lives: #{player[current_player_index + 1].lives}"
    puts "========"
    current_player_index = current_player_index * -1
  end

  if player[current_player_index].lives == 0 || player[current_player_index * -1].lives == 0
    puts "==== GAME OVER ===="
    puts "#{player[current_player_index].name} wins with a score of #{player[current_player_index].score}!"
  end

  end
end
