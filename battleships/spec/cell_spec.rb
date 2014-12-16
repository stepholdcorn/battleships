require 'cell'

describe Cell do

  let(:cell) {Cell.new}
  let(:ship) {double :ship}

  it 'should accept ship' do
    expect(cell.ship_count).to eq(0)
    cell.place(ship)
    expect(cell.ship_count).to eq(1)
  end

  it 'should allow a ship to be destroyed' do
    cell.place(ship)
    cell.destroy(ship)
    expect(cell.ship_count).to eq(0)
  end
end