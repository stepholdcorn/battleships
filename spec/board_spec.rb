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

    context ' Creating grid properties' do

      def grid_property number
        ship_size (number)
        create_grid
      end

      it 'should be able to place a submarine vertically' do
        grid_property 3
        board.place(ship, 'vertical','a1')
        expect(board.grid['a1']).to eq(:ship)
        expect(board.grid['b1']).to eq(:ship)
        expect(board.grid['c1']).to eq(:ship)
      end

      xit 'should be able to receive a hit' do
        grid_property 2
        board.place(ship, 'a1', 'a2')
        board.hit!('a1')
        expect(board.grid['a1']).to eq(:water)
      end

    end

end