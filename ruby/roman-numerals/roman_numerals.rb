module BookKeeping
  VERSION = 2
end

class Integer
  ARABIC_TO_ROMAN = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD',
                      100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X',
                      9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I' }.freeze

  def to_roman(arabic = self, response = '')
    ARABIC_TO_ROMAN.each do |a_key, r_val|
      response << r_val * (arabic / a_key)
      arabic = arabic % a_key
    end
    response
  end
end
