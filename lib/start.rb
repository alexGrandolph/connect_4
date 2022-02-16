
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
      sleep(0.5)
      turn.print_updated_board

      if turn.winner == :human
        puts "Confirming win ...".delete("'")
        sleep(1)
        puts "Winner winner chicken dinner!".delete("'")
        puts "Loading main menu ...".delete("'")
        sleep(3)
        break
      elsif turn.winner == :computer
        puts "Confirming win ...".delete("'")
        sleep(1)
        puts "Bow down to your digital overlords!".delete("'")
        puts "Loading main menu ...".delete("'")
        sleep(3)
        break
      elsif turn.winner == :draw
        puts "----- DRAW -----".delete("'")
        puts "Loading main menu ...".delete("'")
        sleep(3)
        break
      end

      puts 'the connect4-tron is thinking...🤔'
      sleep(3) #this makes 3 seconds pass before next line is executed
      turn.computer_move
      turn.print_updated_board

      if turn.winner == :human
        puts "Confirming win..."
        sleep(1)
        puts "Winner winner chicken dinner!".delete("'")
        puts "Loading main menu ...".delete("'")
        sleep(3)
        break
      elsif turn.winner == :computer
        puts "Confirming win..."
        sleep(1)
        puts "Bow down to your digital overlords!".delete("'")
        puts "Loading main menu ...".delete("'")
        sleep(3)
        break
      elsif turn.winner == :draw
        puts "----- DRAW -----".delete("'")
        puts "Loading main menu ...".delete("'")
        sleep(3)
        break
      end
    end
  end
end
