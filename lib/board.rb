require_relative 'cell'

class Board

include Cell

  def initialize
    @cells = true
  end

  def has_cells?
    @cells
  end

  def grid
    @board = Hash.new
    ('a'..'j').each do |letter|
      (1..10).each do |number|
        @board["#{letter}#{number}"] = :water
      end
    end
    @board      
  end

  def placed_ship
    grid.replace( {"a5" => :ship})
  end

end