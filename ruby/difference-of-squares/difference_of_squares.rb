module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(int)
    @int = int
  end

  def square_of_sum
    sum = 0
    (1..@int).each do |i|
      sum += i
    end
    sum**2
  end

  def sum_of_squares
    sum_of_squares = 0
    squares = [*1..@int].map { |i| i**2 }
    squares.each do |i|
      sum_of_squares += i
    end
    sum_of_squares
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
