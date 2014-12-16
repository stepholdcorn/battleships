require 'board'

describe Board do

  let(:board) {Board.new}
  let(:ship) {double :ship}

  it 'should accept ship' do
    expect(board.ship_count).to eq(0)
    board.place(ship)
    expect(board.ship_count).to eq(1)
  end

  it 'should allow a ship to be destroyed' do
    board.place(ship)
    board.destroy(ship)
    expect(board.ship_count).to eq(0)
  end
end