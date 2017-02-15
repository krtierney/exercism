module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(int)
    @int = int
  end

  def primes
    possible_primes = [*2..@int]
    possible_primes.each do |each|
      possible_primes.each do |int|
        possible_primes.delete(int) if int != each && (int % each).zero?
      end
    end
  end
end
