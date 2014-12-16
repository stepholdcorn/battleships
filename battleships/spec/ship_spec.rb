require 'ship'

describe Ship do

  let(:ship) {Ship.new}

  it 'should be able to create a submarine' do
    expect(Ship.submarine.size).to eq(3)
  end

end