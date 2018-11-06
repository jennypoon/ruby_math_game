require './math_question.rb'
require './player.rb'

class Game

  attr_accessor :player, :current_player_index

  puts "========= TwO-O-Player Math Game ========="
  puts
  p1 = Player.new("Player 1")
  p2 = Player.new("Player 2")
  null_p = Player.new("Null Player")

  player = [null_p, p1, p2]
  current_player_index = 1

  gameOne = Game.new
  puts "Welcome #{p1.name} and #{p2.name}, LETS BEGIN!"
  puts
  while player[current_player_index].lives >= 1

    question = MathQuestions.new

    puts "#{player[current_player_index].name}, your turn!"

    print question.math_question_output

    result = gets.chomp

    if question.is_correct?(result.to_i)
      player[current_player_index].add_score
      puts "#{player[current_player_index].name} - score: #{player[current_player_index].score} lives: #{player[current_player_index].lives}/3 "
      current_player_index = current_player_index * -1
      puts
    else
      player[current_player_index].lose_life

      if player[current_player_index].lives == 0 || player[current_player_index * -1].lives == 0
        puts "==== GAME OVER ===="
        puts "#{player[current_player_index * -1].name} wins with a score of #{player[current_player_index * -1].score}!"
      else
        puts "#{player[current_player_index].name} - score: #{player[current_player_index].score} lives: #{player[current_player_index].lives}/3 "
        current_player_index = current_player_index * -1
        puts
      end

    end
  end

end
