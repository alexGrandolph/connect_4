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
    expect(turn.get_input).to eq('A')
  end

  xit "places a piece" do
    board = Board.new.board
    turn = Turn.new(board)
    require'pry';binding.pry


    #enter 'a' when prompted for this test
    turn.make_move
    expect(board[:A6]).to eq('X')

    #enter 'b' when prompted for this test
    turn.make_move
    expect(board[:B6]).to eq('X')
  end

  xit "places pieces in the lowest available spot" do
    board = Board.new.board
    turn = Turn.new(board)
    require "pry"; binding.pry
    #enter 'a' when prompted for this test
    turn.make_move
    expect(board[:A6]).to eq('X')
    turn.make_move
    expect(board[:A5]).to eq('X')
    turn.make_move
    expect(board[:A4]).to eq('X')
    turn.make_move
    expect(board[:A3]).to eq('X')
    turn.make_move
    expect(board[:A2]).to eq('X')
    turn.make_move
    expect(board[:A1]).to eq('X')
    # require "pry"; binding.pry
  end

  it "computer places a piece randomly" do
    board = Board.new.board
    turn = Turn.new(board)
    turn.computer_move
    # require "pry"; binding.pry
    expect(board.has_value?('O ')).to eq(true)
  end

  it "computer doesn't place pieces in full column" do
    board = Board.new.board
    turn = Turn.new(board)

    board[:A6] = "O "
    board[:A5] = "O "
    board[:A4] = "O "
    board[:A3] = "O "
    board[:A2] = "O "
    board[:A1] = "O "

require "pry"; binding.pry
    turn.computer_move
    expect(board.include?("O ")).to be true
  end
end
