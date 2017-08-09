module BookKeeping
  VERSION = 1
end

class Array
  def accumulate(result=[])
    current = size - 1
    while current >= 0
      result.unshift(yield(self[current]))
      current -= 1
    end
    result
  end
end
