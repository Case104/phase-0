# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
#Array of numbers
# What is the output? (i.e. What should the code return?)
#An array of the most frequent numbers
# What are the steps needed to solve the problem?
#Intake an array
#Create a hash.
#For every instance of itself found in the array, set a counter to increase the value of the hash. Return keys with the highest value as an array.


# 1. Initial Solution

# array=[1,2,3,5,5,7, 7, 3, ]

# def mode(array)
#   hash = {}
#   newarray=[]
#   array.each { |key| hash[key] = 0 }
#   array.each { |key|
#     if hash.has_key?(key)
#       hash[key] += 1 
#     end }
#   sorted_hash = Hash[hash.sort_by { |key, value| value }.reverse]
#    sorted_hash.each { |key, value| 
#       if value == sorted_hash.values[0]
#       newarray.push(key)
      
#     end
#     }
#   return newarray.sort
# end

# p test = mode(array)


 #if value == sorted_hash[key]= hash.values[0]
# Hash[h.sort_by{|k, v| v}.reverse]
# 3. Refactored Solution


def mode(array)
  appearances = {}
  most_frequent=[]
  array.each { |element| appearances[element] = 0 }
  array.each { |element| appearances[element] += 1  if appearances.has_key?(element) }
   sorted_appearances = Hash[appearances.sort_by { |key, value| value }.reverse]
   sorted_appearances.each { |key, value| 
   most_frequent.push(key) if value == sorted_appearances.values[0] }
   most_frequent.sort
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# 	Yes and no. We broke it down verbally and had a good pace, but we skimpped on psuedo code.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# 	Our psueuedoc code was not great. We got working on the solution right away.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# 	No, this one took a little while. We had a general road map of the flow, we knew that we were going to take an array, turn it into a hash, use a counter to increase value, and turn it back into an array.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# 	No, but we did make it prettier! Our variable names in our first solution were terrible, and we had a lot of unncesssary code.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# 	Our final solution is readable. The first one, not so much.
# What is the difference between destructive and non-destructive methods in your own words?
# 	Destructive methods alter their source in some way. Non-destructive leave the source in tact.

