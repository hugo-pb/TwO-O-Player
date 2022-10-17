require './players'
require './game'


def start 
  puts "Welcome to TwO-O-Player game"

player1 = Player.new('player1')
player2 = Player.new('player2')



game = Game.new(player1)
i = 0
## loop questions and alternate between players || stop loop is lives = 0 
while (player1.see_Lives.to_i > 0  ) do
  puts game.player?
  puts "question #{i}"
  i = i + 1
  
  print "> "
 answer = $stdin.gets.chomp
p "your answer #{answer} "

player1.minus_lives

  puts " player 1 lives:#{player1.see_Lives}/3" 
puts " player 2 lives:#{player2.see_Lives}/3" 

end
p 'end game player 2 wins'
## check if answer is correct - lives if not

end



start