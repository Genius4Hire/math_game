class Problem 
  attr_reader :term_x, :term_y, :question

  def initialize (x, y)
    @term_x = x
    @term_y = y
  end

  def response
    puts "What is the sum of #{@term_x} and #{@term_y}"
    gets.chomp.to_i
  end

  def answer
    @term_x + @term_y
  end

end