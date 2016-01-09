# Research Methods

# I spent [6] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

=begin

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

=end

# Person 3

# METHOD SORT BY ALPHABETICAL
# input: array(source)
# do: 
# create empty ARRAY
# loop through EACH to find the first alphanumeric
# PUSH it to new array
# SLICE it out of old array
# repeat WHILE source < 0 
# return: array sorted alphabetically without updating array

# def my_array_sorting_method(source)
#   alphabetized = []
#   while source.length > 0 {
#     source.each do |data|
#       first = source[0]
#       if data < source
#         first = data
#         alphabetized << first
#       end
#     end
#   end
# end 

# Hit a roadblock and method felt inefficient. Second attempt
# Thought about using an each method within an each method. 
# Looked it up on google found a post which highlighted a pitfall with my method
# Their solution does not account for the "I" being capital.
numbers = [2, 4, 3, 1]

def my_array_sorting_method(source)
  source.each_index do |first|
    (first + 1...source.length).each do |second|
      if source[first].to_s.downcase > source[second].to_s.downcase
        source[first], source[second] = source[second], source[first]
      end
    end
  end
end

 p my_array_sorting_method(numbers)

# # When I feel like I don't understand a method, I run through it as if I were the computer and subsitute variables.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_array_sorting_method(i_want_pets)
#   i_want_pets.each_index do |0|   ("I")
#     (0 + 1...8).each do |"want"|
#       if "I" > "want"
#       "I", "want" = "want", "I"
#       puts "I", "want", 3, "pets", "but", "only", "have", 2

#   i_want_pets.each_index do |1| ("want")
#     (1 + 1...8).each do |3|
#       if "want" > "3"
#      "want", "3" = "3", "want"
#       puts "I", "3", "want", "pets", "but", "only", "have", 2

#   i_want_pets.each_index do |2| ("want")
#     (2 + 1...8).each do |"pets"|
#       if "want" > "pets"
#      "want", "3" = "want", "pets"
#       puts "I", "3", "pets", "want", "but", "only", "have", 2

#   i_want_pets.each_index do |3| ("want")
#     (3 + 1...8).each do |"but"|
#       if "want" > "but"
#      "want", "but" = "but", "want"
#       puts "I", "3", "pets", "but", "want", "only", "have", 2

#   i_want_pets.each_index do |4| ("want")
#     (4 + 1...8).each do |"only"|
#       if "want" > "only"
#      "want", "only" = "only", "want"
#       puts "I", "3", "pets", "but", "only", "want", "have", 2

# Had an ah-ha moment. I am forgetting the other loop. first doesn't change within loop containing second.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

# my_array_sorting_method(i_want_pets)
#   i_want_pets.each_index do |0|
#     (0 + 1...8).each do |"want"|
#       if "I" > "want"
#       "I", "want" = "want", "I"      
#       puts "I", "want", 3, "pets", "but", "only", "have", 2

# my_array_sorting_method(i_want_pets)
#   i_want_pets.each_index do |0|
#     (0 + 2...8).each do |3|
#       if "I" > "3"
#       "I", "3" = "3", "I"      
#       puts "3", "want", "I", "pets", "but", "only", "have", 2

# I see how this works now. Literally fist pumped.

# Worked with guide for more elegant solution

# def my_array_sorting_method(source)
#   source.map(&:to_s).map do |element|
#     element.to_i.to_s == element ? element.to_i : element
#   end
# end


# PSUEDO FOR HASH SORT
#input: Hash
#method: use .sort_by to sort
#output: Hash sorted by age

def my_hash_sorting_method(source)
  source.sort_by { |pet, age| age }
end

# Identify and describe the Ruby method(s) you implemented.

# As you can see from my notes, the array solution is complicated. I wanted to understand how the .sort method works,
# without using it.
# Let me run you through it, each_index simply pulls the index of each element (0, 1, 2, 3 ect).
# Then, we set up a second loop to select the next one (first + 1) and assign it to second. (first + 1...8) establishes our
# flow. The comparison itself is by comparing each element in the array to each other, and swapping their positions if 
# the "first" is greater than the "second".

# example

# array = [2, 4, 3, 1]
# 2 > 4 false
# 2 > 3 false
# 2 > 1 true 
# array = [1, 4, 3, 2]
# 4 > 3 true
# array = [1, 3, 4, 2]
# 3 > 2 true
# array = [1, 2, 4, 3]
# 4 > 3 true
# array = [1, 2, 3 ,4]


# In my_hash_sorting_method, I used .sort_by. You give the key and value conditional variable 


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#

