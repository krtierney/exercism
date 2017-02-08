module BookKeeping
  VERSION = 4
end

class Complement
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze

  # Accepts a DNA nucleotide abbreviation, returns RNA complement
  def self.of_dna(dna)
    rna = dna.each_char.map { |d| DNA_TO_RNA[d] }
    rna.compact.length == dna.length ? rna.join : '' 
  end
end
