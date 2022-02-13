
require './lib/turn'

class Start

  def menu
    p "Welcome to CONNECT 4"
    p "Enter p to play. Enter q to quit."
    play = gets.chomp
    quit = gets.chomp
    if play.downcase == 'p'
      Start.new.start
    elsif quit.downcase == 'q'
      'quit program code here'
    end
  end
  def start
    counter = 0
    board = Board.new.board

    turn = Turn.new(board)
    turn.print_updated_board
    p 'please place your first piece human scum'.delete("'")
    until counter == 20
      counter +=1

      turn.make_move
      turn.print_updated_board
      puts 'the connect4-tron is thinking...🤔'
      sleep(3) #this makes 3 seconds pass before next line is executed
      turn.computer_move

      turn.print_updated_board
    end
  end

end
