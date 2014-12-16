class Ship

def initialize
	@placed = false
end

def on_grid?
	@placed
end

def position!
	@placed = true
end

def sink!
	@placed = false
end


end