module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(first, second)
    raise ArgumentError unless first.size == second.size
    first.chars.zip(second.chars).count do |a, b|
      a != b
    end
  end
end
