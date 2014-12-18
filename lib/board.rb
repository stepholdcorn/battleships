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

  def place(ship, *coords)
    raise 'wrong number of coords' if ship.size != coords.size
    coords.each { |coord| @board[coord] = :ship } 
  end
end