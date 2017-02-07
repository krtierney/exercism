module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(first, second)
    raise ArgumentError if first.size != second.size
    @hamming_distance = 0
    (0..first.size).each do |i|
      @hamming_distance += 1 unless first[i] == second[i]
    end
    @hamming_distance
  end
end
