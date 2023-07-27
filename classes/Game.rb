class Game 
  attr_accessor :winner, :battles, :turn

  def initialize 
    @winner = nil;
    @turn = 1;
    @player1 = Player.new()
    @player2 = Player.new()
  end

  def battle
    puts "Let the battle begin!"
    while (@player1.lives > 0 && @player2.lives > 0)
      if @turn == 1
        puts "Player 1:"
        @player1.take_a_problem
        @turn = 2
      else 
        puts "Player 2:"
        @player2.take_a_problem
        @turn = 1
      end
    end

    if @player1.lives < @player2.lives
      print "Player One, "
      @player1.die
    else
      print "Player Two, "
      @player2.die
    end
    
    if @player1.score > @player2.score
      @winner = 1
      print "Player One, "
      @player1.rejoice
    else
      @winner = 2
      print "Player Two, "
      @player2.rejoice
    end
    
    puts "Final score:"
    puts "Player One: #{@player1.score}"
    puts "Player Two: #{@player2.score}"
    puts "Good game!"
  end    


end