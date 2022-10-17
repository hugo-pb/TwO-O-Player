class Game
attr_accessor :current_player

  def initialize(player)
    @current_player = player
  end

 def set_player(n_player)
   self.current_player = n_player   
  end

  def player?
   self.current_player    
  end
end