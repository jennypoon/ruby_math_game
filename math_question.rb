require './player.rb'

class MathQuestions

  attr_accessor :firstnum, :secondnum, :operation

  def initialize
    @firstnum = rand(1...10)
    @secondnum = rand(1...10)
    @operation = "+" #rand(1...4)
  end
    # case @operation
    #   when 1
    #     @operation_sign = "+"

    #   when 2
    #     @operation_sign = "-"

    #   else
    #     @operation_sign = "x"
    # end

  def math_question_generator
    "#{@firstnum}#{@operation}#{@secondnum}"
  end

  def math_question_output
    "What is #{@firstnum} #{@operation} #{@secondnum} = "
  end

  def is_correct?(answer)
    correct_result = eval(math_question_generator)
    if correct_result == answer
      print "==== CORRECT! ==== "
      return true
    else
      print "==== INCORRECT! ==== "
      return false
    end
  end

end

# question = MathQuestions.new
# p question.math_question_output
# result = gets.chomp
# question.is_correct?(result.to_i)
