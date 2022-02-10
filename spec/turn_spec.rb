require 'rspec'
require './lib/board'
require './lib/turn'

RSpec.describe Turn do

  xit "class exists" do
    board = Board.new
    turn = Turn.new(board)

    expect(turn).to be_an_instance_of(Turn)
  end
  xit "gets input" do
    board = Board.new
    turn = Turn.new(board)

#enter 'a' when prompted for this test
    # expect(turn.get_input).to eq('A')
  end

  it "places a piece" do
    board = Board.new.fresh_board
    turn = Turn.new(board)
    # require'pry';binding.pry


    #enter 'a' when prompted for this test
    turn.make_move
    expect(board[:A6]).to eq('X')

    #enter 'b' when prompted for this test
    turn.make_move
    expect(board[:B6]).to eq('X')
  end


end
