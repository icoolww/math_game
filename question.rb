class Question
  attr_reader :question

  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)
    @answer = num1 + num2
    @question = "What does #{num1} plus #{num2} equal?"
  end

  def checking?(answer)
    answer.to_i == @answer
  end

end

# question1 = Question.new
# puts question1.question