require './math_question.rb'
require './player.rb'


puts "TwO-O-Player Math Game"
p1 = Player.new("Player 1")
p2 = Player.new("Player 2")

puts "Welcome #{p1.name} and #{p2.name}, let's begin!"



question = MathQuestions.new
p question.math_question_output