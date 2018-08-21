require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'


class MastermindTest < Minitest::Test
  def test_it_exist
   mastermind = MasterMind.new("p")
   assert_instance_of Game, mastermind
  end

  def test_game_loads
    mastermind = MasterMind.new("p")
    mastermind.takes_input("p")
    expected = "Welcome to MASTERMIND

    Would you like to (p)lay, read the (i)nstructions, or (q)uit?
    >"
    assert_equal expected, mastermind.load_game
  end

  def test_takes_input
    mastermind = MasterMind.new("p")
    mastermind.load_game
    expected_play = "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
    assert_equal expected_play, mastermind.takes_input("p")
  end 
end