class Bob
  def self.hey(remark)
    if remark.upcase == remark && remark =~ /[A-Z]/
      'Whoa, chill out!'
    elsif remark.end_with? '?'
      'Sure.'
    elsif remark.strip.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end
