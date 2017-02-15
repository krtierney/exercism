module BookKeeping
  VERSION = 1
end

class Prime < Integer
  def self.prime?(n)
    (2..n - 1).each do |r|
      return false if (n % r).zero?
    end
  end

  def self.nth(int)
    raise ArgumentError if int.zero?
    (2..Float::INFINITY).lazy.select { |n| n if prime?(n) }.first(int).last
  end
end
