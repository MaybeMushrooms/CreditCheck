class MasterMind
  attr_reader :start_game,
              :input
  def initialize(input)
    @input = input.gets.chomp.to_s
  end
 
  def load_game
    return "Welcome to MASTERMIND

    Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >"
  end


  def takes_input(input)
    if @input == "p"
      "I have generated a beginner sequence with four elements made up of: (r)ed,
      (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
      What's your guess?"
    end
  end
end

