require './lib/board'


puts "welcome homeslice"
puts board.render
board = Board.new

def play
    loop do
       if check_game_over?
         true
       break
      else
        false    
    end

  end
