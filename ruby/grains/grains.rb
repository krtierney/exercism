module BookKeeping
  VERSION = 1
end

class Grains
  BOARD_RANGE = 1..64

  def self.square(board)
    raise ArgumentError unless BOARD_RANGE.include? board
    (1..board).inject { |grain| grain * 2 }
  end

  def self.total
    BOARD_RANGE.inject { |total, board| total + square(board) }
  end
end
