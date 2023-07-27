class Player 
  attr_accessor :lives, :score

  def initialize
    @lives = 3;
    @score = 0;
  end

  def die
    puts "Your math skills failed you for the last time, you lose!"
  end

  def rejoice
    puts "You defeated your opponent!!  RRAAAAwwRR!"
  end

end