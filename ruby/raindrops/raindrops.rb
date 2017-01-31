module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(int)
    @result = []
    if (int % 3).zero? then @result << 'Pling' end
    if (int % 5).zero? then @result << 'Plang' end
    if (int % 7).zero? then @result << 'Plong' end
    if @result == []
      int.to_s
    else
      @result.join.to_s
    end
  end
end
