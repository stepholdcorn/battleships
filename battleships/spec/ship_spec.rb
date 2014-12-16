require 'ship'

describe Ship do

  let(:ship) {Ship.new}

  it "should not be placed when we create it" do
    expect(ship).not_to be_on_grid
  end

  it 'should be able to be placed' do
    ship.position!
    expect(ship).to be_on_grid
  end

  it 'should be able to be sank' do
    ship.position!
    ship.sink!
    expect(ship).not_to be_on_grid
  end

end