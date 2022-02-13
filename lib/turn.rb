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

    loop do

      input = get_input
      if input == 'A'
        if board[:A6] == '. '
          board[:A6] = 'X '
          break
        elsif board[:A5] == '. '
          board[:A5] = 'X '
          break
        elsif board[:A4] == '. '
          board[:A4] = 'X '
          break
        elsif board[:A3] == '. '
          board[:A3] = 'X '
          break
        elsif board[:A2] == '. '
          board[:A2] = 'X '
          break
        elsif board[:A1] == '. '
          board[:A1] = 'X '
          break
        else
          p "This column is full. Please select a different column."
        end


      elsif input == 'B'
        if board[:B6] == '. '
          board[:B6] = 'X '
          break
        elsif board[:B5] == '. '
          board[:B5] = 'X '
          break
        elsif board[:B4] == '. '
          board[:B4] = 'X '
          break
        elsif board[:B3] == '. '
          board[:B3] = 'X '
          break
        elsif board[:B2] == '. '
          board[:B2] = 'X '
          break
        elsif board[:B1] == '. '
          board[:B1] = 'X '
          break
        else
          p "This column is full. Please select a different column."
          # get_input

        end

      elsif input == 'C'
        if board[:C6] == '. '
          board[:C6] = 'X '
          break
        elsif board[:C5] == '. '
          board[:C5] = 'X '
          break
        elsif board[:C4] == '. '
          board[:C4] = 'X '
          break
        elsif board[:C3] == '. '
          board[:C3] = 'X '
          break
        elsif board[:C2] == '. '
          board[:C2] = 'X '
          break
        elsif board[:C1] == '. '
          board[:C1] = 'X '
          break
        else
          p "This column is full. Please select a different column."

        end

      elsif input == 'D'
        if board[:D6] == '. '
          board[:D6] = 'X '
          break
        elsif board[:D5] == '. '
          board[:D5] = 'X '
          break
        elsif board[:D4] == '. '
          board[:D4] = 'X '
          break
        elsif board[:D3] == '. '
          board[:D3] = 'X '
          break
        elsif board[:D2] == '. '
          board[:D2] = 'X '
          break
        elsif board[:D1] == '. '
          board[:D1] = 'X '
          break
        else
          p "This column is full. Please select a different column."

        end

      elsif input == 'E'
        if board[:E6] == '. '
          board[:E6] = 'X '
          break
          board[:E6] = 'X '
        elsif board[:E5] == '. '
          board[:E5] = 'X '
          break
        elsif board[:E4] == '. '
          board[:E4] = 'X '
          break
        elsif board[:E3] == '. '
          board[:E3] = 'X '
          break
        elsif board[:E2] == '. '
          board[:E2] = 'X '
          break
        elsif board[:E1] == '. '
          board[:E1] = 'X '
          break
        else
          p "This column is full. Please select a different column."

        end

      elsif input == 'F'
        if board[:F6] == '. '
          board[:F6] = 'X '
          break
        elsif board[:F5] == '. '
          board[:F5] = 'X '
          break
        elsif board[:F4] == '. '
          board[:F4] = 'X '
          break
        elsif board[:F3] == '. '
          board[:F3] = 'X '
          break
        elsif board[:F2] == '. '
          board[:F2] = 'X '
          break
        elsif board[:F1] == '. '
          board[:F1] = 'X '
          break
        else
          p "This column is full. Please select a different column."

        end

      elsif input == 'G'
        if board[:G6] == '. '
          board[:G6] = 'X '
          break
        elsif board[:G5] == '. '
          board[:G5] = 'X '
          break
        elsif board[:G4] == '. '
          board[:G4] = 'X '
          break
        elsif board[:G3] == '. '
          board[:G3] = 'X '
          break
        elsif board[:G2] == '. '
          board[:G2] = 'X '
          break
        elsif board[:G1] == '. '
          board[:G1] = 'X '
          break
        else
          p "This column is full. Please select a different column."

        end
      else
        p "you big dummie i said A through G try again"
        # get_input
      end
    end
  end


  def computer_move
    computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].sample
      loop do

        if computer_choice == 'A'
          if board[:A6] == '. '
            board[:A6] = 'O '
            break
          elsif board[:A5] == '. '
            board[:A5] = 'O '
            break
          elsif board[:A4] == '. '
            board[:A4] = 'O '
            break
          elsif board[:A3] == '. '
            board[:A3] = 'O '
            break
          elsif board[:A2] == '. '
            board[:A2] = 'O '
            break
          elsif board[:A1] == '. '
            board[:A1] = 'O '
            break
          else

            computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].sample

          end
      elsif computer_choice == 'B'
        if board[:B6] == '. '
          board[:B6] = 'O '
          break
        elsif board[:B5] == '. '
          board[:B5] = 'O '
          break
        elsif board[:B4] == '. '
          board[:B4] = 'O '
          break
        elsif board[:B3] == '. '
          board[:B3] = 'O '
          break
        elsif board[:B2] == '. '
          board[:B2] = 'O '
          break
        elsif board[:B1] == '. '
          board[:B1] = 'O '
          break
        else
          computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].sample
        end

      elsif computer_choice == 'C'
        if board[:C6] == '. '
          board[:C6] = 'O '
          break
        elsif board[:C5] == '. '
          board[:C5] = 'O '
          break
        elsif board[:C4] == '. '
          board[:C4] = 'O '
          break
        elsif board[:C3] == '. '
          board[:C3] = 'O '
          break
        elsif board[:C2] == '. '
          board[:C2] = 'O '
          break
        elsif board[:C1] == '. '
          board[:C1] = 'O '
          break
        else
          computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].sample
        end

      elsif computer_choice == 'D'
        if board[:D6] == '. '
          board[:D6] = 'O '
          break
        elsif board[:D5] == '. '
          board[:D5] = 'O '
          break
        elsif board[:D4] == '. '
          board[:D4] = 'O '
          break
        elsif board[:D3] == '. '
          board[:D3] = 'O '
          break
        elsif board[:D2] == '. '
          board[:D2] = 'O '
          break
        elsif board[:D1] == '. '
          board[:D1] = 'O '
          break
        else
          computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].sample
        end

      elsif computer_choice == 'E'
        if board[:E6] == '. '
          board[:E6] = 'O '
          break
        elsif board[:E5] == '. '
          board[:E5] = 'O '
          break
        elsif board[:E4] == '. '
          board[:E4] = 'O '
          break
        elsif board[:E3] == '. '
          board[:E3] = 'O '
          break
        elsif board[:E2] == '. '
          board[:E2] = 'O '
          break
        elsif board[:E1] == '. '
          board[:E1] = 'O '
          break
        else
          computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].sample
        end

      elsif computer_choice == 'F'
        if board[:F6] == '. '
          board[:F6] = 'O '
          break
        elsif board[:F5] == '. '
          board[:F5] = 'O '
          break
        elsif board[:F4] == '. '
          board[:F4] = 'O '
          break
        elsif board[:F3] == '. '
          board[:F3] = 'O '
          break
        elsif board[:F2] == '. '
          board[:F2] = 'O '
          break
        elsif board[:F1] == '. '
          board[:F1] = 'O '
          break
        else
          computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].sample
        end

      elsif computer_choice == 'G'
        if board[:G6] == '. '
          board[:G6] = 'O '
          break
        elsif board[:G5] == '. '
          board[:G5] = 'O '
          break
        elsif board[:G4] == '. '
          board[:G4] = 'O '
          break
        elsif board[:G3] == '. '
          board[:G3] = 'O '
          break
        elsif board[:G2] == '. '
          board[:G2] = 'O '
          break
        elsif board[:G1] == '. '
          board[:G1] = 'O '
          break
        else
          computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].sample
        end
      else
        computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G'].sample
      end
    end
  end

  def column(column)
    @column = column
    if column == "A"
      return board[:A1],board[:A2], board[:A3], board[:A4] , board[:A5], board[:A6]
    elsif column == "B"
      return board[:B1],board[:B2], board[:B3], board[:B4] , board[:B5], board[:B6]
    elsif column == "C"
      return board[:C1],board[:C2], board[:C3], board[:C4] , board[:C5], board[:C6]
    elsif column == "D"
      return board[:D1],board[:D2], board[:D3], board[:D4] , board[:D5], board[:D6]
    elsif column == "E"
      return board[:D1],board[:D2], board[:D3], board[:D4] , board[:D5], board[:D6]
    elsif column == "F"
      return board[:F1],board[:F2], board[:F3], board[:F4] , board[:F5], board[:F6]
    elsif column == "G"
      return board[:G1],board[:G2], board[:G3], board[:G4] , board[:G5], board[:G6]
    end
  end

  def row(row)
    @row = row
    if row == 1
      return board[:A1], board[:B1], board[:C1], board[:D1], board[:E1], board[:F1], board[:G1]
    elsif row == 2
      return board[:A2], board[:B2], board[:C2], board[:D2], board[:E2], board[:F2], board[:G2]
    elsif row == 3
      return board[:A3], board[:B3], board[:C3], board[:D3], board[:E3], board[:F3], board[:G3]
    elsif row == 4
      return board[:A4], board[:B4], board[:C4], board[:D4], board[:E4], board[:F4], board[:G4]
    elsif row == 5
      return board[:A5], board[:B5], board[:C5], board[:D5], board[:E5], board[:F5], board[:G5]
    elsif row == 6
      return board[:A6], board[:B6], board[:C6], board[:D6], board[:E6], board[:F6], board[:G6]
    end
  end

  def print_updated_board
    rows = ["1", "2", "3", "4", "5", "6"]
      puts 'A B C D E F G'.delete("'")
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

  def winner
    a_values = column("A").join

    if a_values.include?("O O O O")
      return :computer
    elsif a_values.include?("X X X X")
      return :human
    end
  end
end
