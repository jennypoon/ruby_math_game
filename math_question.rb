class MathQuestions

  def initialize
    @firstnum = rand(1...10)
    @secondnum = rand(1...10)
    @operation = rand(1...4)

    case @operation
      when 1
        @operation_sign = "+"

      when 2
        @operation_sign = "-"

      else
        @operation_sign = "x"
    end
end

  def math_question_output
    "What is #{@firstnum} #{@operation_sign} #{@secondnum} ?"
  end
end

# question = MathQuestions.new
# p question.math_question_output
