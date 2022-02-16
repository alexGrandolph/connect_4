require 'rspec'
require './lib/board'
require './lib/turn'

RSpec.describe Turn do

  it "class exists" do
    board = Board.new
    turn = Turn.new(board)

    expect(turn).to be_an_instance_of(Turn)
  end

  it "gets input" do
    board = Board.new
    turn = Turn.new(board)

    puts "Enter 'a' when prompted for this test"
    expect(turn.get_input).to eq('A')
  end

  it "places a piece" do
    board = Board.new.board
    turn = Turn.new(board)



    puts "Enter 'a' when prompted for this test"
    turn.make_move
    expect(board[:A6]).to eq('X ')

    puts "Enter 'b' when prompted for this test"
    turn.make_move
    expect(board[:B6]).to eq('X ')
  end

  it "places pieces in the lowest available spot" do
    board = Board.new.board
    turn = Turn.new(board)

    puts "Enter 'a' when prompted each time for this test"
    turn.make_move
    expect(board[:A6]).to eq('X ')
    turn.make_move
    expect(board[:A5]).to eq('X ')
    turn.make_move
    expect(board[:A4]).to eq('X ')
    turn.make_move
    expect(board[:A3]).to eq('X ')
    turn.make_move
    expect(board[:A2]).to eq('X ')
    turn.make_move
    expect(board[:A1]).to eq('X ')
  end

  it "computer places a piece randomly" do
    board = Board.new.board
    turn = Turn.new(board)
    turn.computer_move

    expect(board.has_value?('O ')).to eq(true)
  end

  it "returns array of a whole column" do
    board = Board.new.board
    turn = Turn.new(board)
    board[:A1] = "O "
    expect(turn.column('A')).to eq(["O ", ". ", ". ", ". ", ". ", ". "])
  end

  it "returns an array of a whole row" do
    board = Board.new.board
    turn = Turn.new(board)
    board[:C1] = "O "
    expect(turn.row("1")).to eq([". ", ". ", "O ", ". ", ". ", ". ", ". "])
  end

  it "can determine a winner in a column" do
    board = Board.new.board
    turn = Turn.new(board)

    board[:A4] = "O "
    board[:A3] = "O "
    board[:A2] = "O "
    board[:A1] = "O "

    expect(turn.winner).to eq(:computer)

    board[:A4] = "X "
    board[:A3] = "X "
    board[:A2] = "X "
    board[:A1] = "X "

    expect(turn.winner).to eq(:human)
  end

  it "can determine a winner in a row" do
    board = Board.new.board
    turn = Turn.new(board)

    board[:D1] = "O "
    board[:C1] = "O "
    board[:B1] = "O "
    board[:A1] = "O "

    expect(turn.winner).to eq(:computer)

    board[:D1] = "X "
    board[:C1] = "X "
    board[:B1] = "X "
    board[:A1] = "X "

    expect(turn.winner).to eq(:human)
  end

  it "can determine a winner in a diagonal" do
    board = Board.new.board
    turn = Turn.new(board)

    board[:D1] = "O "
    board[:C2] = "O "
    board[:B3] = "O "
    board[:A4] = "O "

    expect(turn.winner).to eq(:computer)

    board[:D1] = "X "
    board[:C2] = "X "
    board[:B3] = "X "
    board[:A4] = "X "

    expect(turn.winner).to eq(:human)
  end

  it "column error test" do
    board = Board.new.board
    turn = Turn.new(board)

    board[:A6] = "X "
    board[:A5] = "X "
    board[:A4] = "X "
    board[:A3] = "O "
    board[:A2] = "O "

    board[:B6] = "X "
    board[:B5] = "O "
    board[:B4] = "X "
    board[:B3] = "X "
    board[:B2] = "O "

    expect(turn.winner).to eq(nil)
  end
end
