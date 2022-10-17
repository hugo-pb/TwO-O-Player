class Game
attr_accessor :current_player
attr_accessor :winner

  def initialize(player)
    @current_player = player
    @winner = nil
  end

 def set_player(n_player)
   self.current_player = n_player   
  end

  def player?
   self.current_player    
  end

def set_winner(n_player)
   self.winner = n_player   
  end

  def is_winner
   self.winner    
  end

end