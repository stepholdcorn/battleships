require 'player'

describe Player do

	let (player)  {Player.new}

	it 'player should receive a board on initialization' do
		expect(player.board).to eq(1)
	end

end