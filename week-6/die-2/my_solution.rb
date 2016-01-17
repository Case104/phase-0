# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# I am making a dice that takes an array of labels. Sides will be equal to array length the program will return a random index.

# Input: labels, expect a non empty array
# Output: Error Message, make labels a class array
# Steps: IF the array is empty, display error message. Set labels to be equal to @labels

# Input: sides
# Output: # of sides
# Steps: @die_sides.length

# Input: roll
# Output: random message
# Steps: return random between the indices


# Initial Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new('You must input an array, and it must not be empty!') if (labels ==[])
  	@number_of_sides = labels.length
    @labels_array = labels
  end
  def sides
  	return @number_of_sides
  end

  def roll
  	@labels_array.shuffle!
    return @labels_array[0]
  end
end

test_die = Die.new(['It\'s your lucky day!', 'I wouldn\'t go outside today...', 'You\'re future is uncertain.'])
p test_die.roll


# # Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new('You must input an array, and it must not be empty!') if (labels ==[])
    @number_of_sides = labels.length
    @labels_array = labels
  end
  def sides
    return @number_of_sides
  end
  def roll
    @labels_array.shuffle!
    return @labels_array[0]
  end
end

test_die = Die.new(['It\'s your lucky day!', 'I wouldn\'t go outside today...', 'You\'re future is uncertain.'])
p test_die.roll
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

	# The only thing I really needed th change in the logic is the fact that it now takes an array instead of in integer. This led me to change how sides works, and to have it loop through the array and select a random index to return.

# What does this exercise teach you about making code that is easily changeable or modifiable? 

	# Having a basis to work off of is valuable and time-saving.

# What new methods did you learn when working on this challenge, if any?

	# I did not use any new methods.

# What concepts about classes were you able to solidify in this challenge?
	
	# I think I have a decent understanding of classes now. Each class is an object that has its owm methods, the first one being initialize. The methods act locally within the object. 



