require_relative 'cell'

class Board

include Cell

  attr_reader :cell

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
        @board["#{letter}#{number}"] = @cell = :water
      end
    end
    @board      
  end

end