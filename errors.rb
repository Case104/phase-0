# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.

#What is the name of the file with the error?
# errors.rb

=begin
What is the line number where the error occurs?
8
What is the type of error message?
syntax
What additional information does the interpreter provide about this type of error?
unexpected =. Uses carrot to show where.
Where is the error in the code?
before cartmans_phrase
Why did the interpreter give you this error?
Variable assignment is incorrect.
=end



# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
#end
#end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# ruby states 189, but its really 36.
# 3. What is the type of error message?
# syntax
# 4. What additional information does the interpreter provide about this type of error?
# It was expecting an end
# 5. Where is the error in the code?
# line 36
# 6. Why did the interpreter give you this error?
# because the method isn't closed. Ruby needs to end both the method and the while statement.

# --- error -------------------------------------------------------

#south_park 

# 1. What is the line number where the error occurs?
# 54
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# tells me its "south_park" and that it is a name error.
# 4. Where is the error in the code?
# The interpreter expected south_park to have some sort of value.
# 5. Why did the interpreter give you this error?
# south_park is undefined.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 69
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# tells me that the method "cartman()" is undefined using no method error.
# 4. Where is the error in the code?
# cartman() has not been defined anywhere before attemping to call the method.
# 5. Why did the interpreter give you this error?
# cartman() has not been defined in order to call the method.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 84 and 88
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# 1 argument when it expects 0. argument error.
# 4. Where is the error in the code?
# ('I hate Kyle')
# 5. Why did the interpreter give you this error?
# cartmans_phrase has no argument assigned to it, yet one is being called on it.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says("Screw you guys")

# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# 0 for 1, argument error
# 4. Where is the error in the code?
# 107 after cartman_says
# 5. Why did the interpreter give you this error?
#  cartman_says should have an argument passed on it.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 124, 128
# 2. What is the type of error message?
# incorrect number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# 1 for 2 expected, argument eerror
# 4. Where is the error in the code?
#  could solve it by deleting name from the method, or adding a second argument to cartmans_lie
# 5. Why did the interpreter give you this error?
# ruby expects 2 arguments to cartmans_lie, yet only recieved 1.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#  143
# 2. What is the type of error message?
# type error
# 3. What additional information does the interpreter provide about this type of error?
# string can't be forced nto fixnum
# 4. Where is the error in the code?
#  You are trying to multiply an interger with a string.
# 5. Why did the interpreter give you this error?
# You are trying to multiply an interger with a string.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 158
# 2. What is the type of error message?
# zero division error
# 3. What additional information does the interpreter provide about this type of error?
# shows that its the / and that you cannot divide by 0
# 4. Where is the error in the code?
#  amount_of_kfc_left = "20/0"
# 5. Why did the interpreter give you this error?
# If there is 0 of something, you also cannot have 20 of it.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 174
# 2. What is the type of error message?
# cannot load file
# 3. What additional information does the interpreter provide about this type of error?
# provides the path where the file should be.
# 4. Where is the error in the code?
# the code is fine.
# 5. Why did the interpreter give you this error?
# cartmans_essay.md does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
	
Which error was the most difficult to read?

They were all pretty simple. Maybe 5 * "respect my authoritay" could be tough to find.

How did you figure out what the issue with the error was?

I ran the program, read the error message, looked at the code, and saw the error.

Were you able to determine why each error message happened based on the code? 

Yes.

When you encounter errors in your future code, what process will you follow to help you debug?

I will read the error that it gives me, go to the line(s) that it specifies, and see if I can figure it out.
Sometimes, like in the case of an unclosed method, looking at the line can be tricky. If it has a carrot, like syntax errors, the solution is easy to find.
	
=end