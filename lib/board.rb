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

  def place(ship, coord)

      coords = Array.new
      coords << coord
      ship.size.times do
        coord = coord.reverse.next.reverse
        coords << coord
      end
  
     coords.each { |coord| @board[coord] = :ship }
  end

  def hit!(coord)
    @board[coord] = property
  end
end


