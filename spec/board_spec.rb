require 'board'

describe Board do

  let(:board) {Board.new}
  let(:ship) {double :ship}
  let(:cell) {double :cell}

  it 'should be able to contain a cell' do
    expect(board).to have_cells
  end

  it 'should contain water cells on initialization' do
    board.grid
    expect(board.grid).to include("a5" => :water)
  end

  it 'should contain 100 cells' do
  	board.grid
  	expect(board.grid.count).to eq(100)
  end

  xit 'should recognise when a ship has been placed on a cell' do
    board.grid
    board.placed_ship
    expect(board.grid).to include("a5" => :ship)
  end
end