module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = Hash.new(0)
    normalize(@phrase).each { |word| counts[word] += 1 if counts[word] }
    counts
  end

  private

  def normalize(phrase)
    phrase.split(/(?:(?!['\"])[^\w-])+/).map do |word|
      word.gsub(/((?<!\w)'|'(?!\w))/, '').downcase
    end
  end
end
