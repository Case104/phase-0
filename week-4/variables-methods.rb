puts "Whats is your first name?"
firstName = gets.chomp.capitalize!
puts "Your middle name?"
midName = gets.chomp.capitalize!
puts "How about your last name?"
lastName = gets.chomp.capitalize!
puts "Hello "+firstName+" "+midName+" "+lastName+" it is nice to meet you!"


puts "What is your favorite number?"
favNum = gets.chomp.to_i
betNumInt = favNum + 1
betNum = betNumInt.to_s
puts "Hmmm, that is a little small. What do you think of "+betNum+"?"

=begin
How do you define a local variable?
	Define a variable within a function or method.
How do you define a method?
	Define the method using "def", add code, and end the method.
What is the difference between a local variable and a method?
	A local variable is a peice of data stored as an object that can be manipulated and called. A method is executable code that can be recalled and accept variables.
How do you run a ruby program from the command line?
	Type "ruby" followed by the program name.
How do you run an RSpec file from the command line?
	Type "rspec" followed by the spec program name.
What was confusing about this material? What made sense?
	I was confused because I had puts instead of return. Once I read through the spec file, I found my mistake.
	Creating a method and calling it makes sense to me.
end