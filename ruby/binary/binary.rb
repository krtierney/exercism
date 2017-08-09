module BookKeeping
  VERSION = 3
end

class Binary
  def self.to_decimal(bin)
    bin.chars.map.with_index do |c, i|
      raise ArgumentError unless c =~ /[01]/
      position = bin.length - (i + 1)
      c.to_i * (2 ** position)
    end.inject(:+)
  end
end
