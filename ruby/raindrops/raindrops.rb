module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(int)
    result = ''
    result << 'Pling' if (int % 3).zero?
    result << 'Plang' if (int % 5).zero?
    result << 'Plong' if (int % 7).zero?
    result.empty? ? int.to_s : result
  end
end
