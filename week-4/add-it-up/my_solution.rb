# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Kyle Zelman.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# define method
# method accepts array
# each add to sum
#return sum

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution

def total(array)
	sum = 0
	array.each do |num|
		sum += num
	end
	return sum
end

=begin	
def total(array)
 sum = 0
  array.inject { |sum,num| sum + num }
end
=end



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution
