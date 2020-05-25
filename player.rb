class Player
  attr_accessor :lives

  def initialize 
    @lives = 3
  end

  def life_loss
    @lives = @lives - 1
  end

end