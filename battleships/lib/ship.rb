class Ship

attr_reader :size

def initialize(size)
	@size = size
end

def self.submarine
	new(3)
end


end