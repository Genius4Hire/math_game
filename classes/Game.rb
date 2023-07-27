class Game 
  attr_accessor :winner, :battles, :turn

  def initialize 
    @winner = nil;
    @turn = 1;
    @player1 = Player.new()
    @player2 = Player.new()
  end

end