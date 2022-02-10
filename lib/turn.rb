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
      if @board[:A6] == '.'
        @board[:A6] = 'X'
      elsif @board[:A5] == '.'
        @board[:A5] = 'X'
      elsif @board[:A4] == '.'
        @board[:A4] = 'X'
      elsif @board[:A3] == '.'
        @board[:A3] = 'X'
      elsif @board[:A2] == '.'
        @board[:A2] = 'X'
      elsif @board[:A1] == '.'
        @board[:A1] = 'X'
      else
        p "This column is full. Please select a different column."
      end

    elsif input == 'B'
      @board[:B6] = 'X'
    end

  end
end
