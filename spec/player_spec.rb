require 'player'
require 'board'

describe Player do

	let(:player)  {Player.new}
	let(:board) {Board.new}
  let(:ship) {double :ship}

	it 'should be able to place a ship' do
		player.place(ship, 'vertical', 'a1')
    board.place(ship, 'vertical', 'a1')
    expect(board.grid['a1']).to eq(:ship)
    expect(board.grid['b1']).to eq(:ship)
    expect(board.grid['c1']).to eq(:ship)
	end

end