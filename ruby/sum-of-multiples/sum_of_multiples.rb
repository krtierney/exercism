module BookKeeping
  VERSION = 1
end

class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(final_int, multiples = [])
    @factors.each do |f|
      (final_int - 1).downto(f) do |n|
        multiples << n if n % f == 0
      end
    end
    multiples.uniq.inject(0, :+)
  end

end
