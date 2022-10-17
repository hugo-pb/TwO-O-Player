require './game'
class Player 
attr_accessor :lives

  def initialize
    @lives = 3
  end

  def see_Lives
    self.lives
  end
 
end