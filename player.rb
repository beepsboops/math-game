# 3 lives

# minus one life for getting answer wrong

# at end of 

class Player
  attr_reader :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def minus_life
    @lives = @lives - 1
  end

end