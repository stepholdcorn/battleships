class Board

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
        @board["#{letter}#{number}"] = "grid_cell"
      end
    end
    @board      
  end

end