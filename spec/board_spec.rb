# Tests for Board class
require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "class exists" do
    new_board = Board.new
    expect(new_board).to be_an_instance_of(Board)
  end

end
