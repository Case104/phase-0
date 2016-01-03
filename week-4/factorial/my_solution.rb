# Factorial

# I worked on this challenge with Kyle Zelman.


# Your Solution Below

def factorial(number)
	total = 1
	if number == 0
		return 1
	else
		while number > 1
			total *= number
			number -= 1
		end
		return total
	end
end

=begin
def factorial(number)
 number.downto(1).reduce(:*)
end
=end