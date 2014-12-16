require 'ship'

describe Ship do

  let(:ship) {Ship.new}

  it 'should be able to create a submarine' do
    expect(Ship.submarine.size).to eq(3)
  end

  it 'should be able to create an aircraft carrier' do
    expect(Ship.aircraft_carrier.size).to eq(5)
  end

  it 'should be able to create a battleship' do
    expect(Ship.battleship.size).to eq(4)
  end

  it 'should be able to create a destroyer' do
    expect(Ship.destroyer.size).to eq(3)
  end

  it 'should be able to create a patrol boat' do
    expect(Ship.patrol_boat.size).to eq(2)
  end

end