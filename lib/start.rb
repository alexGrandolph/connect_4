
require './lib/turn'

class Start

  def menu
    loop do
      puts "Welcome to CONNECT 4".delete("'")
      puts "Enter P to play. Enter Q to quit.".delete("'")
      input = gets.chomp
      if input.downcase == 'p'
        Start.new.start
      elsif input.downcase == 'q'
        puts "Maybe another time. See ya later alligator!".delete("'")
        break
      end
    end
  end

  def start
    board = Board.new.board
    turn = Turn.new(board)
    turn.print_updated_board
    puts 'Place your first piece human scum'.delete("'")

    loop do

      turn.make_move
      turn.print_updated_board

      if turn.winner == :human
        puts "Winner winner chicken dinner!".delete("'")
        break
      elsif turn.winner == :computer
        puts "Bow down to your digital overlords!".delete("'")
        break
      elsif turn.winner == :draw
        puts "----- DRAW -----".delete("'")
        break
      end

      puts 'the connect4-tron is thinking...🤔'
      sleep(3) #this makes 3 seconds pass before next line is executed
      turn.computer_move
      turn.print_updated_board

      if turn.winner == :human
        puts "Winner winner chicken dinner!".delete("'")
        break
      elsif turn.winner == :computer
        puts "Bow down to your digital overlords!".delete("'")
        break
      elsif turn.winner == :draw
        puts "----- DRAW -----".delete("'")
        break
      end
    end
  end

end
