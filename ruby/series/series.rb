class Series
  def initialize(base_digits)
    @base_digits = base_digits
  end

  def slices(length, result = [])
    raise ArgumentError unless @base_digits.length >= length
    @base_digits.length.times do |i|
      result << @base_digits.slice(i, length)
    end
    result.delete_if { |i| i.length != length }
  end
end
