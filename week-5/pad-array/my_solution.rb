# Pad an Array

# I worked on this challenge with Jonathan

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# The input is going to be an array, an integer for the minimum array size, and an optional value for the "padding"

# What is the output? (i.e. What should the code return?)
# If the minimum size is less than or equal to the size of the array, the output will be the original array. If the minimum size is greater than the size of the array, the output will be the original array plus the optional value x number of times.

# What are the steps needed to solve the problem?
# 1. Calculate the difference between the minimum size and the array length
# 2. Create an if/else statement
#   - IF the difference is <= 0, then returns array
#   - ELSE push the value difference times
#   - return the array


# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  if difference <= 0
    return array
  else
    difference.times{ array.push(value) }
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  newarray = array.clone
  difference = min_size - newarray.length
  if difference <= 0
    return newarray
  else
    difference.times{ newarray.push(value) }
    return newarray
  end
end
=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  if difference <= 0
    array
  else
    difference.times{ array.push(value) }
    array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  clone = array.clone
  difference = min_size - clone.length
  if difference <= 0
    clone
  else
    difference.times{ clone.push(value) }
    clone
  end
end

# array = [1, 2, 3, 4]
# p pad!(array, 3, "apples")

# # 4. Reflection

# Were you successful in breaking the problem down into small steps?
# 	Yes! We knew exactly how we wanted to solve this and followed our psuedocode.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# 	Yes. We realized late that we needed to call .clone on the new array.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# 		We pased most tests, only failed pad being non-destructive. We fixed it with .clone.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# 	Not really, we felt that the solution was good enough, we clarified variable names.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# 	Very, yes.
# What is the difference between destructive and non-destructive methods in your own words?
# 	Destrutive alters the source. Non destructive leaves it in tact.




