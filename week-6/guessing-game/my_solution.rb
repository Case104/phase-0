# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: answer
# Output: none
# Steps: Class takes an answer as argument. Must be integer. Holds answer for comparison

# Input: guess 
# Output: low, high, correct
# Steps: Compare guess to answer.
# 	IF guess > answer return high
# 	IF guess < answer return low
# 	IF guess == answer return correct

# Input: solved?
# Output: yes / no
# Steps: 
# 	IF guess == answer return yes
# 	IF guess != answer return no


# Initial Solution

class GuessingGame
  def initialize(answer)
  	raise ArgumentError.new('Pick a number!') if answer.is_a?(String)
  	@answer = answer
  end
  def guess(guess)
  	@guess = guess
  	if @guess == nil
  		return nil
  	elsif @guess > @answer
  		return :high
  	elsif @guess < @answer
  		return :low
  	else
  		return :correct
  	end
  end
  def solved?
  	@last_guess = guess(@guess)
  	unless @last_guess == :correct
  		return false
  	else 
  		return true
  	end
  end
end

# time_to_guess = GuessingGame.new(7)
# p time_to_guess.guess(6)
# p time_to_guess.solved?
# p time_to_guess.guess(8)
# p time_to_guess.solved?
# p time_to_guess.guess(7)
# p time_to_guess.solved?
# p time_to_guess.guess(1)
# p time_to_guess.solved?



# Refactored Solution

# class GuessingGame
#   def initialize(answer)
#     if answer.is_a?(Integer)
#       @answer = answer
#     else
#       raise ArgumentError.new('Pick a number!')
#     end
#   end
#   def guess(choice)
#     if choice.is_a?(Integer)
#       @choice = choice
#       if @choice > @answer
#         :high
#       elsif @choice< @answer
#         :low
#       else 
#         :correct
#       end
#     else
#       raise ArgumentError.new('Guess a number!')
#     end
#   end
#   def solved?
#     @last_guess = guess(@choice)
#     @last_guess == :correct ? true : false
#   end
# end

# pick_a_number = GuessingGame.new(7)
# p pick_a_number.guess(6)
# p pick_a_number.solved?
# p pick_a_number.guess(8)
# p pick_a_number.solved?
# p pick_a_number.guess(7)
# p pick_a_number.solved?
# p pick_a_number.guess(1)
# p pick_a_number.solved?


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# 	This question confuses me. Maybe the method is equal the the action taken on the object, and the variables represent the moving parts.

# When should you use instance variables? What do they do for you?
# 	You should use instance variables if they are specific to the the object.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# 	I originally used an if statement for the solved? portion and failed three rspecs. I arrived to the same answers that were required. I'm still not sure why the unless was necessary. Other than that, the flow is pretty simple.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# 	A symbol is immutable, it cannot be changed. They are easy to recognize and are processed faster.
