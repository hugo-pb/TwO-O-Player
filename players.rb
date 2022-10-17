require './game'
class Player 
attr_accessor :lives
attr_accessor :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def see_Lives
    self.lives
  end
  def to_s
    self.name
  end
 
end