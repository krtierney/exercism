module BookKeeping
  VERSION = 3
end

class Pangram
  DEC_A_TO_Z = [*65..90]

  def self.pangram?(phrase)
    (DEC_A_TO_Z - phrase.upcase.bytes).empty?
  end
end
