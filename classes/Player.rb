class Player 
  attr_accessor :lives, :score

  def initialize
    @lives = 3;
    @score = 0;
  end

  def die
    puts "your math skills failed you for the last time, game over!"
  end

  def rejoice
    puts "you got the most points!"
  end

  def win_round
    @score += 1;
    puts "You have answered wisely, you have #{@score} points."
  end

  def lose_round
    @lives -= 1;
    puts "Umm, no. You have #{@lives} lives left."
  end

  def take_a_problem
    challenge = Problem.new(rand(1...100), rand(1..100))
    if challenge.response == challenge.answer
      self.win_round
    else
      self.lose_round
    end
  end


end