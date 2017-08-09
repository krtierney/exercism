class Fixnum
  def is_prime?
    (2..self - 1).each do |r|
      return false if (self % r).zero?
    end
  end
end

class PrimeFactors
  def self.for(number, factors = [], factor_found=false)
    return factors if number == 1
    if number.is_prime?
      factors << number
    else
      (2..number-1).each do |d|
        factor_found = false
        if (number % d).zero?
          factors << d
          factor_found = true
          self.for((number/d), factors, factor_found)
        end
        break if factor_found
      end
      factors
    end
  end
end
