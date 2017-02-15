module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = {}
    normalize(@phrase).each do |word|
      counts[word] += 1 if counts[word]
      counts[word] = 1 unless counts[word]
    end
    counts
  end

  private

  def normalize(phrase)
    phrase.split(/(?:(?!['\"])[^\w-])+/).map do |word|
      word.gsub(/((?<!\w)'|'(?!\w))/, '').downcase
    end
  end
end
