require './lib/board'

class Turn
  attr_accessor :board
  def initialize(board)
    @board = board

  end
  def get_input
    p 'Please select a letter from A through G'
    get_input = gets.chomp.upcase

  end


  def make_move
    # @board = Board.new.board
    @new_board = {}
    input = get_input
    # require "pry"; binding.pry

    if input == 'A'
      if board[:A6] == '. '
        board[:A6] = 'X '
      elsif board[:A5] == '. '
        board[:A5] = 'X '
      elsif board[:A4] == '. '
        board[:A4] = 'X '
      elsif board[:A3] == '. '
        board[:A3] = 'X '
      elsif board[:A2] == '. '
        board[:A2] = 'X '
      elsif board[:A1] == '. '
        board[:A1] = 'X '
      else
        p "This column is full. Please select a different column."
        get_input
      end


    elsif input == 'B'
      if @board[:B6] == '. '
        @board[:B6] = 'X '
      elsif @board[:B5] == '. '
        @board[:B5] = 'X '
      elsif @board[:B4] == '. '
        @board[:B4] = 'X '
      elsif @board[:B3] == '. '
        @board[:B3] = 'X '
      elsif @board[:B2] == '. '
        @board[:B2] = 'X '
      elsif @board[:B1] == '. '
        @board[:B1] = 'X '
      else
        p "This column is full. Please select a different column."
        get_input
      end

    elsif input == 'C'
      if @board[:C6] == '. '
        @board[:C6] = 'X '
      elsif @board[:C5] == '. '
        @board[:C5] = 'X '
      elsif @board[:C4] == '. '
        @board[:C4] = 'X '
      elsif @board[:C3] == '. '
        @board[:C3] = 'X '
      elsif @board[:C2] == '. '
        @board[:C2] = 'X '
      elsif @board[:C1] == '. '
        @board[:C1] = 'X '
      else
        p "This column is full. Please select a different column."
        get_input
      end

    elsif input == 'D'
      if @board[:D6] == '. '
        @board[:D6] = 'X '
      elsif @board[:D5] == '. '
        @board[:D5] = 'X '
      elsif @board[:D4] == '. '
        @board[:D4] = 'X '
      elsif @board[:D3] == '. '
        @board[:D3] = 'X '
      elsif @board[:D2] == '. '
        @board[:D2] = 'X '
      elsif @board[:D1] == '. '
        @board[:D1] = 'X '
      else
        p "This column is full. Please select a different column."
        get_input
      end

    elsif input == 'E'
      if @board[:E6] == '. '
        @board[:E6] = 'X '
      elsif @board[:E5] == '. '
        @board[:E5] = 'X '
      elsif @board[:E4] == '. '
        @board[:E4] = 'X '
      elsif @board[:E3] == '. '
        @board[:E3] = 'X '
      elsif @board[:E2] == '. '
        @board[:E2] = 'X '
      elsif @board[:E1] == '. '
        @board[:E1] = 'X '
      else
        p "This column is full. Please select a different column."
        get_input
      end

    elsif input == 'F'
      if @board[:F6] == '. '
        @board[:F6] = 'X '
      elsif @board[:F5] == '. '
        @board[:F5] = 'X '
      elsif @board[:F4] == '. '
        @board[:F4] = 'X '
      elsif @board[:F3] == '. '
        @board[:F3] = 'X '
      elsif @board[:F2] == '. '
        @board[:F2] = 'X '
      elsif @board[:F1] == '. '
        @board[:F1] = 'X '
      else
        p "This column is full. Please select a different column."
        get_input
      end

    elsif input == 'G'
      if @board[:G6] == '. '
        @board[:G6] = 'X '
      elsif @board[:G5] == '. '
        @board[:G5] = 'X '
      elsif @board[:G4] == '. '
        @board[:G4] = 'X '
      elsif @board[:G3] == '. '
        @board[:G3] = 'X '
      elsif @board[:G2] == '. '
        @board[:G2] = 'X '
      elsif @board[:G1] == '. '
        @board[:G1] = 'X '
      else
        p "This column is full. Please select a different column."
        get_input
      end
    else
      p "you big dummie i said A through G try again"
      get_input
    end
    # @board.board.print_board
  end

  def print_updated_board
        rows = ["1", "2", "3", "4", "5", "6"]
          p 'A B C D E F G'
        rows.each do |row|
          current_row = {}
          @board.each do |key, val|
            if key.to_s.include?row
              current_row[key] = val
            end
          end

          puts current_row.values.join
        end

  end
end
