module BookKeeping
  VERSION = 2
end

class Fixnum
  ROMANS = { 1 => 'I', 5 => 'V', 10 => 'X'}
  def to_roman
    'I' * self    
  end
end
