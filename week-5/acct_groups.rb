# Conditions:
	# Group size must be between 3 - 5
	# prefer 4 - 5

# INPUT:
	# list of names

# OUTPUT: 
	# groups of people

# METHOD: 
	# take list of names, SPLIT by , set equal to array.
	# IF array.length <= 5, return list.join
	# ELSE randomize array
		# IF array.length divisible by 5 OR remainder 4 OR remainder 3, SLICE array by 5
		# ELSIF array.length divisible by 4 OR remainder 3, SLICE by 4
		# ELSIF array.length divisibly by 3 SLICE by 3

		# CURRENT METHOD WILL HAVE "HOLES" off the top of my head, 17 and 22 will break it.

def form_groups(list)
	list_array = list.split(", ")
	list_length = list_array.length
	if list_length <= 5
		return list_array
	else
		list_array.shuffle!
		if list_length % 5 == 0 || list_length % 5 == 4 || list_length % 5 == 3
			return list_array.each_slice(5).to_a
		elsif list_length % 4 == 0 || list_length % 4 == 3
			return list_array.each_slice(4).to_a
		elsif list_length % 3 == 0
			return list_array.each_slice(3).to_a
		end
	end
end


# REFACTOR:

def form_groups(list)
	list_array = list.split(", ")
	list_length = list_array.length
	if list_length <= 5
		return list_array
	else
		list_array.shuffle!
		if list_length % 5 == 0 || list_length % 5 == 4 || list_length % 5 == 3
			return list_array.each_slice(5).to_a
		elsif list_length % 4 == 0 || list_length % 4 == 3
			return list_array.each_slice(4).to_a
		elsif list_length % 3 == 0
			return list_array.each_slice(3).to_a
		end
	end
end

=begin
I'm way behind this week so I don't have enough time to refactor all of my solutions. That being said, I would probably use a switch statement (case) for my if and elsif conditions. I have no "else" so case would most likely work better. I would also try to think of a way to solve for numbers like 17 and 22, which do not meet any of the current criteria. I believe I can keep the same line of thought and figure out a solution for thise numbers.

What was the most interesting and most difficult part of this challenge?
	I thought this one was fairly simple. Its interesting to think about what would break it. I feel like I want to write a program designed to try to break it.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
	This was my most successful psuedocode yet. I think as I add more methods to my vocabulary, psuedo code ill get easier.
Was your approach for automating this task a good solution? What could have made it even better?
	Ditto what I said in refactor. DRY
What data structure did you decide to store the accountability groups in and why?
	I decided on an array. I didn't have two or more corresponding peices of data to store, so I felt that an array was warranted.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	I learned to plan my time better. I had a busy work week and didn't even look at the workload until Thursday. I should have made DBC the priority.
end