module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute(first, second)
    unless first.size == second.size
      raise ArgumentError
    end
    diff = 0
    (0..first.size).each do |i|
      unless first[i] == second[i]
        diff +=1
      end
    end
    return diff
    
  end

end
