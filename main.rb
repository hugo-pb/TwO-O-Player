require './players'
require './game'


def start 
  puts "Welcome to TwO-O-Player game"
player1 = Player.new('player1')
player2 = Player.new('player2')

puts " player 1 lives:#{player1.see_Lives}/3" 
puts " player 2 lives:#{player2.see_Lives}/3" 

game = Game.new(player1)
puts game.player?


end



start