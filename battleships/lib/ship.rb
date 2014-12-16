class Ship

attr_reader :size

def initialize(size)
	# @placed = false
	@size = size
end

# def on_grid?
# 	@placed = true
# end

# def position!
# 	@placed = true
# end

# def sink!
# 	@placed = false
# end

def self.submarine
	new(3)
end


end