class Question
  attr_reader :question, :answer

  def initialize
    num1 = rand(21)
    num2 = rand(21)
    @question = "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
    
  end 
end
