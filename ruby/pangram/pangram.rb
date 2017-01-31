module BookKeeping
  VERSION = 3
end

class Pangram
  A_TO_Z = [*65..90]
  def self.pangram?(phrase)
    A_TO_Z - phrase.upcase.bytes == [] ? true : false
  end
end
