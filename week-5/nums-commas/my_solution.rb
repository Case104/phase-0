# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# positive integer
# What is the output? (i.e. What should the code return?)
# string including the number seperated by commas
# What are the steps needed to solve the problem?
# number change to string
# could use an array, storing each number as a string in each index. 
# reverse through array, insert a , every 4th
# reverse, join, return


# 1. Initial Solution

# def separate_comma(integer)
# 	string = integer.to_s
# 	array = string.split(//)
# 	(array.length / 3).times {array.insert(-4, ",")}
# 	commas = array.join
# end


# -4 * num - x). each do |comma| { comma.inse}

# string_array = integer.to_s.split(//)
# div3 = array.length / 3

# def separate_comma(integer)
# 	string_array = integer.to_s.split(//)
# 	div3 = string_array.length / 3
# 	counter = 0
# 	until counter == div3
# 		num = 1
# 		x = 0
# 		comma_placement = -4 * num + x
# 		string_array.insert(comma_placement, ",")
# 		num += 1
# 		x += 1
# 		counter += 1
# 	end
# 	return string_array.join
# end

# p separate_comma(100000000)

def separate_comma(integer)
	string_array = integer.to_s.split(//)
	string_length = string_array.length
	div3 = string_length / 3

	if string_length < 4
		integer = integer.to_s
	elsif string_length % 3 == 1
		comma_placement = 1
		div3.times do
			string_array.insert(comma_placement, ",")
			comma_placement += 4
		end
	elsif string_length % 3 == 2
		comma_placement = 2
		div3.times do
			string_array.insert(comma_placement, ",")
			comma_placement += 4
		end
	elsif string_length % 3 == 0
		comma_placement = 3
		div3 -= 1
		div3.times do
			string_array.insert(comma_placement, ",")
			comma_placement += 4
		end
	end
	return string_array.join
end


# 2. Refactored Solution

# I feel like a refactored version of my second solution would be 
# more elegant, but I don't understand why it isn't working.



# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# First I thought about reversing the array and adding a comma in increments of 3, and then reverse it again. I didn't get far when I ran into
# a couple of issues and decided to reapproach it. This time, I tried to loop backwards through the array. I don't know why this one doesn't work.
# After a couple of hours tweaking it, I decided to go back to the drawing board and use simple if statments.

# Was your pseudocode effective in helping you build a successful initial solution?

# Not really. I don't think I'm doing psuedo code enough. I take a lot of notes when I code, both on paper and in the document, but I didn't go back to
# psuedo code for each of my attempts.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I couldn't really find any methods to make this simpler. As I'm using if statements, I'm sure a more elegant solution is available, but I haven't found it.

# How did you initially iterate through the data structure?

# I used .times if a condition was met.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# As I code I kind of refactor it, at least for simple stuff.


