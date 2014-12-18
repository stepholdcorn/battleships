require_relative 'cell'


class Board

include Cell

  def initialize
    setup_board!
  end

  def setup_board!
    @board = {}
    ('a'..'j').each do |letter|
      (1..10).each do |number|
        @board["#{letter}#{number}"] = property
      end
    end
  end

  def grid
    @board
  end

  def place(ship, orientation, coord)
    coords = @board
    coords.each { |coord| @board[coord] = :ship }
    if orientation == 'vertical'
    coords.reverse.next.reverse
    else 'error'
    end
  end

  def hit!(coord)
    @board[coord] = property
  end
end


