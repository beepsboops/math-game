# At the end of every turn, show score

# Game ends when player dies

# When game ends, show winner & score

# Manage current player

class Game 
attr_accessor :current_player, :game_over 
  
  def initialize
    @turn = 0
    @game_over = false
    @players = []
    @players[0] = Player.new("Player 1")
    @players[1] = Player.new("Player 2")
  end

  def start
    while !@game_over do
      player = @players[@turn %2]
      other_player = @players[(@turn + 1) %2]

      new_question = Question.new(player.name)
      new_question.ask
      new_answer = gets.chomp.to_i
      if new_question.validate(new_answer)
        puts "#{player.name}: YES! You are correct."
      else
        player.minus_life
        puts "#{player.name}: Seriously? No!"
        if player.lives == 0
          puts "#{other_player.name} wins with a score of #{other_player.lives}/3" 
          @game_over = true
        break
        end
      end
      puts "Your lives are #{player.lives}"
      @turn = @turn + 1
    end
  end

end