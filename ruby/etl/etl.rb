module BookKeeping
  VERSION = 1
end

class ETL
  def self.transform(old, new = {})
    old.each_pair do |k, v|
      v.each { |letter| new[letter.downcase] = k }
    end
    new
  end
end
