module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(input, output = '')
    input.scan(/(.)(\1*)/).inject('') do |output, (char, count)|
      output << (1 + count.length).to_s unless count.length == 0
      output << char
    end
  end

  def self.decode(input, output = '')
    input.scan(/(\d+)?(\D{1})/).inject('') do |output, (count, char)|
      count ? output << char * count.to_i : output << char
    end
  end
end
