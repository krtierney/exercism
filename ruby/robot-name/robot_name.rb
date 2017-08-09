module BookKeeping
  VERSION = 2
end

class Robot
  @@prior_names = []

  def initialize
    @name = self.name
    @@prior_names << @name
  end

  def name
    @name = @name || self.reset
  end

  def reset(name = [])
    2.times { name << ('A'..'Z').to_a.sample }
    3.times { name << [*1..9].sample.to_s }
    @name = name.join unless @@prior_names.include? name.join
  end
end
