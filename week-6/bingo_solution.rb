# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # letter = "bingo" split with .shuffle. rand number 1 - 100

# Check the called column for the number called.
  # sort each array into column rather than row 
  #  
  # b = 0, i = 1, n = 2, g = 3, o = 4 

# If the number is in the column, replace with an 'x'
  # bingo gives index. check index with random number. if number exists, replace with x

# Display a column to the console
  # organize board by column instead of row. 
  # revert organization

# Display the board to the console (prettily)
  # Uhhhhhhh I'll come back to this once I see how I do the rest...
  # Decided to seperate with puts statements

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @board_by_col = @bingo_board.transpose
#   end

#   def call
#     # @letters = "BINGO"
#     # @split_letters = @letters.split(//)
#     # @random_letters = @split_letters.shuffle!
#     # @random_number = rand(0..100)
#     @random_letters = ["B", "I"]
#     @random_number = 47
#     puts @random_letters[0] + @random_number.to_s
#   end

#   def check
#     case @random_letters[0]
#     when "B"
#       @board_by_col[0].map! { |num| num = "X" if num == @random_number }
#     when "I"
#       @board_by_col[1].each { |num| num = "X" if num == @random_number }
#     when "N"
#       @board_by_col[2].each { |num| num = "X" if num == @random_number }
#     when "G"
#       @board_by_col[3].each { |num| num = "X" if num == @random_number }
#     when "O"
#       @board_by_col[4].each { |num| num = "X" if num == @random_number }
#     end
#   end

#   def display_board
#     @display_board = @board_by_col.transpose
#     print @display_board[0]
#     puts
#     print @display_board[1]
#     puts
#     print @display_board[2]
#     puts
#     print @display_board[3]
#     puts
#     print @display_board[4]
#     puts
#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @board_by_col = @bingo_board.transpose
  end
  def call
    @letters = "BINGO"
    @split_letters = @letters.split(//)
    @random_letters = @split_letters.shuffle!
    case @random_letters[0]
    when "B"
      @random_number = rand(0..15)
    when "I"
      @random_number = rand(15..30)
    when "N"
      @random_number = rand(30..45)
    when "G"
      @random_number = rand(45..60)
    when "O"
      @random_number = rand(60..75)
    end
    puts @random_letters[0] + @random_number.to_s
  end
  def check
    @board_by_col[2][2] = 'X'
    case @random_letters[0]
    when "B"
      @board_by_col[0].map! { |num| num == @random_number ? 'X': num }
    when "I"
      @board_by_col[1].map! { |num| num == @random_number ? 'X': num }
    when "N"
      @board_by_col[2].map! { |num| num == @random_number ? 'X': num }
    when "G"
      @board_by_col[3].map! { |num| num == @random_number ? 'X': num }
    when "O"
      @board_by_col[4].map! { |num| num == @random_number ? 'X': num }
    end
  end
  def display_board
    @display_board = @board_by_col.transpose
    print @display_board[0]
    puts
    print @display_board[1]
    puts
    print @display_board[2]
    puts
    print @display_board[3]
    puts
    print @display_board[4]
    puts
  end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

driver = BingoBoard.new(board)

# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.call
# driver.check
# driver.display_board

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   Difficult. I'm finding that I just want to get in there and get something down, then go over the logic on how its going to pan out. I don't like it, I need to find a better way to visualize what I want to do before I get started
# What are the benefits of using a class for this challenge?
#   You can create multiple bingo boards that run along side of each other.
# How can you access coordinates in a nested array?
#   For lack of a better explanation, like I did with the free space. Put the index within the index.
# What methods did you use to access and modify the array?
#   I used map! within a case statement
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#   .transpose was cool, and took the headache out of how I saw to do it. It takes the array of arrays, and breakes it into new arrays based on the index. 
# How did you determine what should be an instance variable versus a local variable?
#   I made everything an instance variable. Oops?
# What do you feel is most improved in your refactored solution?
#   I thought my code was looking clean, so I swapped to refactor when I realized that I needed to use map instead of each. I saw the answer from there, and figured i'd make the if statements into ternerary operators, as well as add the bonus challenge. The next thing to do would be to make the bingo display board prettier.
