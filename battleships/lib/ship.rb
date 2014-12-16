class Ship

attr_reader :size

def initialize(size)
	@size = size
end

def self.submarine
	new(3)
end

def self.aircraft_carrier
	new(5)
end

def self.battleship
	new(4)
end

def self.destroyer
	new(3)
end

def self.patrol_boat
	new(2)
end


end