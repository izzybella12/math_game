class Questions

  def initialize 
    @random_num1 = (rand(1..20))
    @random_num2 = (rand(1..20))
  end

  def question 
    "What does #{@random_num1} plus #{@random_num2} equal?"
  end

  def answer
    @random_num1 + @random_num2
  end

end

