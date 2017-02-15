module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(int)
    @int = int
  end

  def square_of_sum
    (1..@int).inject(&:+).to_i**2
  end

  def sum_of_squares
    (1..@int).inject(0) { |sum, n| sum + n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
