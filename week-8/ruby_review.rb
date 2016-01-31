# I worked on this challenge by myself
# This challenge took me [#] hours.

# Pseudocode
# IF num is integer 
# 	UNTIL fibo = num OR fibo > num
# 		fibo = 1
# 		fibo = fibo + fibo
# 	IF fibo = num
# 		return true
# 	ELSE 
# 		return false
# ELSE

# I need two variables, fibo which is the previous incarnation and fibo 2. 

# Initial Solution


def fibonacci (num)
	fibo1 = 1
	fibo2 = 2
	i = 5
	while i <= num
		temp = fibo2
		fibo2 = fibo2 + fibo1
		fibo1 = temp
		i += 1
	end
	p fibo2
end

fibonacci(8)



# def is_fibonacci?(num)
# 	if num.is_a? Integer
# 	num.times do fibonacci (num)
# 		fibo1 = 1
# 		fibo2 = 2
# 		while i <= num
# 			temp = fib2
# 			fib2 = fib2 + fib1
# 			fib1 = temp
# 			i += 1
# 		end
# 	end
# 		if fibo == num
# 			p "true"
# 			return true
# 		else
# 			p "false"
# 			return false
# 		end
# 	else 
# 		p "not"
# 	end
# end

# is_fibonacci?(5)


# Refactored Solution







# Reflection

# At this point I've decided that I am spending too much time on this one and hit a wall. I decided to park this and do an easier one for the time being