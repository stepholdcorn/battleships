class Board

  def initialize
    @ships = []
  end

  def ship_count
    @ships.count
  end

  def place(ship)
    @ships << ship
  end

end