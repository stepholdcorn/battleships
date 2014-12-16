require 'board'

describe Board do

  let(:board) {Board.new}
  let(:ship) {double :ship}

  it 'should be able to contain a cell' do
    expect(board).to have_cells
  end

  it 'should contain a number of cells' do
    board.grid
    expect(board.grid).to include("a5" => "grid_cell")
  end
end