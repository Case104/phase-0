# Die Class 1: Numeric

# I worked on this challenge with

# I spent 1 hour on this challenge.

# 0. Pseudocode

# Input: sides
# Output: # of sides, random roll
# # Steps: 
# 	1. Add argument variable if sides < 1
# 	2. Make instance variable
# 	3. random roll within sides parameter


# 1. Initial Solution

# class Die
#   def initialize(sides)
#   	raise ArgumentError.new("A die must have at least one side!") if (sides < 1)
#     @die_sides = sides 
#   end

#   def sides
#     return @die_sides
#   end

#   def roll
#     return (1 + rand(@die_sides))
#   end
# end

# test_die = Die.new(6)
# p test_die.sides
# 10.times {p test_die.roll }


# 3. Refactored Solution

class Die
  def initialize(sides)
  	raise ArgumentError.new("A die must have at least one side!") if (sides < 1)
    @die_sides = sides 
  end

  def sides
  	return @die_sides
  end

  def roll
    return (1 + rand(@die_sides))
  end
end

# test_die = Die.new(6)
# p test_die.sides
# 10.times {p test_die.roll }





# 4. Reflection

# What is an ArgumentError and why would you use one?
# 	An arugment error is a tool that you use to let the user know why the program won't work
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	# I've used random before in js so I was familiar with the idea, but this is the first time I've used it in Ruby. The argument error is new to me. Seems simple enough.
# What is a Ruby class?
	# A class is an object with associated methods and variables that exist locally within the class.
# Why would you use a Ruby class?
	# Clarity and in larger projects, making sure that you don't have conflicting variables or methods. It helps you keep organized.
# What is the difference between a local variable and an instance variable?
	# An instance variable exists only in that specific "instance" of the class.
# Where can an instance variable be used?
	# Only with in the defined class.

