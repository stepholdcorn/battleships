require 'cell'

class BoardCell; include Cell; end

describe Cell do

  let(:cell) {BoardCell.new}
  let(:ship) {double :ship}
  let(:water) {double :water}

  it 'should accept ship' do
    cell.place(ship)
    expect(cell.ship_count).to eq(1)
  end

  it 'should allow a ship to be destroyed' do
    cell.place(ship)
    cell.destroy(ship)
    expect(cell.ship_count).to eq(0)
  end

  it 'should contain water' do
    cell.place(ship)
    cell.destroy(ship)
    expect(cell.ship_count).to eq(0)
  end
end