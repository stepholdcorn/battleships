class Ship

SHIPS = {patrol_boat: 2, submarine: 3, destroyer: 3, battleship: 4, aircraft_carrier: 5}

attr_reader :size

def initialize size
	@size = size
end

def self.method_missing name
	return new SHIPS[name] if SHIPS[name]
    super
end

end