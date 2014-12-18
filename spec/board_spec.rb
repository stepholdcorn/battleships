require 'board'

describe Board do

  let(:board) {Board.new}
  let(:ship) {double :ship}

  it 'should contain water cells on initialization' do
    board.grid
    expect(board.grid).to include("a5" => :water)
  end

  it 'should contain 100 cells' do
  	board.grid
  	expect(board.grid.count).to eq(100)
  end

  it 'should be able to place a submarine' do
    allow(ship).to receive(:size) {3}
    board.grid
    board.place(ship,'a1', 'a2', 'a3')
    expect(board.grid['a1']).to eq(:ship)
    expect(board.grid['a2']).to eq(:ship)
    expect(board.grid['a3']).to eq(:ship)
  end

  it 'should raise error if wrong number of coords is supplied' do
    allow(ship).to receive(:size) {3}
    board.grid
    expect( lambda { board.place(ship, 'a1', 'a2', 'a3', 'a4') }).to raise_error(RuntimeError, 'wrong number of coords')
  end

end