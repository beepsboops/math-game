class Question 
attr_reader :answer

def initialize(player)
  @player = player
  @val1 = rand(1...10)
  @val2 = rand(1...10)
  @answer = @val1.to_i + @val2.to_i
end

def ask
  puts "#{@player}: What does #{@val1} plus #{@val2} equal?"
end

def validate(answer)
  answer == @answer
end

end