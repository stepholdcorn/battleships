require 'board'

describe Board do

  let(:board) {Board.new}
  let(:ship) {double :ship}

  def create_grid
    board.grid
  end

  def ship_size number
    allow(ship).to receive(:size) {number}
  end


  it 'should contain water cells on initialization' do
    create_grid
    expect(board.grid).to include("a5" => :water)
  end

  it 'should contain 100 cells' do
  	create_grid
  	expect(board.grid.count).to eq(100)
  end

  it 'should be able to place a submarine' do
    ship_size 3
    create_grid
    board.place(ship,'a1', 'a2', 'a3')
    expect(board.grid['a1']).to eq(:ship)
    expect(board.grid['a2']).to eq(:ship)
    expect(board.grid['a3']).to eq(:ship)
  end

  it 'should raise error if wrong number of coords is supplied' do
    ship_size 3
    create_grid
    expect( lambda { board.place(ship, 'a1', 'a2', 'a3', 'a4') }).to raise_error(RuntimeError, 'wrong number of coords')
  end

  it 'should be able to receive a hit' do
    ship_size 2
    create_grid
    board.place(ship, 'a1', 'a2')
    board.hit!('a1')
    expect(board.grid['a1']).to eq(:water)
  end

  it 'should be able to raise error if coords not in order' do
    ship_size 2
    create_grid
    expect( lambda { board.place(ship, 'a1', 'b2') }).to raise_error(RuntimeError, 'You must place a ship in order')
  end

  it 'should be able to raise error if coords not in order for a ship larger than 2' do
    ship_size 3
    create_grid
    expect( lambda { board.place(ship, 'a1', 'a2', 'a4') }).to raise_error(RuntimeError, 'You must place a ship in order')
  end

end