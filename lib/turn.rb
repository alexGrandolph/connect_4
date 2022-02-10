require './board'

class Turn
  attr_reader :input, :board
  def initialize(board)
    @input = input
    @board = board

  end
  def get_input
    p 'Please select a letter from A through G'
    get_input = gets.chomp.upcase

  end

  def make_move
    input = get_input

    if input == 'A'
      # require'pry';binding.pry
      @board[:A6] = 'X'
    elsif input == 'B'
      @board[:B6] = 'X'
    end

  end
end
