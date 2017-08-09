class Array
  def keep(result = [], &block)
    self.each do |i|
      result << i if block.call(i)
    end
    result
  end
  
  def discard(result = [], &block)
    self.each do |i|
      result << i unless block.call(i)
    end
    result
  end
end
