module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(int)
    @int = int
  end

  def primes
    array = [*2..@int]
    array.each do |i|
      array.each do |e|
        array.delete(e) if e != i && (e % i).zero?
      end
    end
  end
end
