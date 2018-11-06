class MathQuestions

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


  def math_question_output
    "#{@firstnum}#{@operation}#{@secondnum}"
  end

  def math_evaluation
    eval(math_question_output)
  end

  def evaluation(answer)
    correct_result = eval(math_question_output)
    if (correct_result == answer)
      puts "Correct!"
    else
      puts "Lose a life!"
    end
  end
end

question = MathQuestions.new
p question.math_question_output
p question.math_evaluation
result = gets.chomp
question.evaluation(result.to_i)
