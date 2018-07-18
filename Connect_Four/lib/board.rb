require 'pry'

class Board
  attr_reader :spaces,
              :player_one_move,
              :rendered_rows,
              :hash_grid
  def initialize
   @hash_grid = {"A" => Array.new(7, "."), 
              "B" => Array.new(7, "."),
              "C" => Array.new(7, "."),  
              "D" => Array.new(7, "."),  
              "E" => Array.new(7, "."),  
              "F" => Array.new(7, "."), 
              "G" => Array.new(7, ".")}
  
  @rendered_rows = rendered_rows #this is an array now

  end
   
  def grid
    grid =  @hash_grid.values.transpose.reverse
  end

  def render
  @rendered_rows = grid.map do |row|
      row.join
    end
   key_string = @hash_grid.keys.join
   value_string = rendered_rows.join("\n")
   "#{key_string} \n#{ value_string}"
  end

  def player_one_move(column)
   @selected_column = @hash_grid[column]
   @selected_column[0] = "X" 
   
  end

   def computer_move(column)
    @selected_column = @hash_grid[column]
    @selected_column[0] = "0" 
    binding.pry
   end

end


