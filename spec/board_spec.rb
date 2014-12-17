require 'board'
require 'ship'

describe Board do

  let(:board) {Board.new}
  let(:ship) {double :ship}
  let(:cell) {double :cell}

  it 'should contain water cells on initialization' do
    board.grid
    expect(board.grid).to include("a5" => :water)
  end

  it 'should contain 100 cells' do
  	board.grid
  	expect(board.grid.count).to eq(100)
  end

  it 'should be able to place a submarine' do
    board.grid
    board.place(ship,'a1', 'a2', 'a3')
    expect(board.grid['a1']).to eq(:ship)
    expect(board.grid['a2']).to eq(:ship)
    expect(board.grid['a3']).to eq(:ship)
  end

end