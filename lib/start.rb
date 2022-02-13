
require './lib/turn'

class Start

  def menu
    loop do
      p "Welcome to CONNECT 4"
      p "Enter p to play. Enter q to quit."
      input = gets.chomp
      if input.downcase == 'p'
        Start.new.start
      elsif input.downcase == 'q'
        p "Maybe another time. See ya later alligator!"
        break
      end
    end
  end
  
  def start
    board = Board.new.board
    turn = Turn.new(board)
    turn.print_updated_board
    p 'please place your first piece human scum'.delete("'")

    loop do

      turn.make_move
      turn.print_updated_board

      if turn.winner == :human
        puts "Winner winner chicken dinner!"
        break
      elsif turn.winner == :computer
        puts "Bow down to your digital overlords!"
        break
      elsif turn.winner == :draw
        puts "----- DRAW -----"
        break
      end

      puts 'the connect4-tron is thinking...🤔'
      sleep(3) #this makes 3 seconds pass before next line is executed
      turn.computer_move
      turn.print_updated_board

      if turn.winner == :human
        puts "Winner winner chicken dinner!"
        break
      elsif turn.winner == :computer
        puts "Bow down to your digital overlords!"
        break
      elsif turn.winner == :draw
        puts "----- DRAW -----"
        break
      end
    end
  end

end
