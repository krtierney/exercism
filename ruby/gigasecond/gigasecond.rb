module BookKeeping
  VERSION = 3
end

class Gigasecond
  GIGASECOND = 1_000_000_000

  def self.from(birthday)
    birthday + GIGASECOND
  end
end
