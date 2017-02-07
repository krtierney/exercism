class Robot
  NAME_REGEXP = /^[A-Z]{2}\d{3}$/

  def initialize
  end

  def name
    @name = @name || self.reset
  end

  def reset
    @name = # Figure out how to generate new pattern matching the regex
  end
end
