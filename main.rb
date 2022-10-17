require './players'
require './game'
require './questions'

def start 
puts "Welcome to TwO-O-Player game"

player1 = Player.new('player1')
player2 = Player.new('player2')



game = Game.new(player1)

## loop questions and alternate between players
while (!game.is_winner ) do
  
  puts "its your turn #{game.player?}"

##### generate question ####
  q = Question.new
  puts "#{q.val1} + #{q.val2} ?"

##### is answer correct? ####
 print "> "
 answer = $stdin.gets.chomp

  if answer.to_i == q.get_ans
    puts "awesome thats correct!!"
  else
    game.player?.minus_lives
  end 

##### is there a winner? ####
  if(player1.see_Lives.to_i == 0)
    game.set_winner(player2)
  end
  if(player2.see_Lives.to_i == 0)
    game.set_winner(player1)
  end

##### scores || lives left ####
  puts " player 1 lives:#{player1.see_Lives}/3" 
  puts " player 2 lives:#{player2.see_Lives}/3" 

  ##### change player ####
  if game.player? == player1 
    game.set_player(player2)
    
  else
    game.set_player(player1)
  end

  puts "--- new turn ---"

end
p "end game, #{game.is_winner} wins!"

end



start

