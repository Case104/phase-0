#Attr Methods

# I worked on this challenge by myself.

# I spent [2] hours on this challenge.

# Pseudocode

# Input: No user input. Takes variable for name, method to initalize, x2 and method to say hello.
# Output: hello outputs a greeting with name
# Steps: 
# 	1. Create class with @name variable and name symbol with an attr_reader or attr_accessor
# 	2. Create class with initialize with variable equal to first clas.new. 
# 	3. Create method hello with interpolization leading to name from first class.
# The challenge seemed really simple and I wasn't sure how to psuedocode it.... I just kind of knew it.


class NameData
	attr_accessor :name # could be reader. Went to accessor to allow name to be changed in the future.
	def initialize
		@name = "Jonathan"
	end
end

class Greetings
	def initialize
		@instance_name = NameData.new
	end

	def hello
		puts "Hello #{@instance_name.name}!"
	end
end

test_greeting = Greetings.new
test_greeting.hello



# Reflection

# RELEASE 1
# What are these methods doing?
# 	They create a profile that includes age, name, and occupation. Then they allow you to change any of those variables.

# How are they modifying or returning the value of instance variables?
# 	By defining methods that take a parameter, change it, and reapply it as the new instance variable.

# RELEASE 2
# What changed between the last release and this release?
# 	attr_reader was added, making the def what is age method unnecessary.

# What was replaced?
# 	The method asking the age. 

# Is this code simpler than the last?
#	Yes, it has one less method. 

# RELEASE 3
# What changed between the last release and this release?
# 	attr_writer was added regarding age.
# What was replaced?
# 	The method to change age.
# Is this code simpler than the last?
# 	Yes. By adding attr_writer, you have removed the need for a method to change age.

# RELEASE 4
# No questions here, but here I realized that we were also changing how the change is made in the driver code. 

# RELEASE 6
# What is a reader method?
# 	A staement that give you access to call the symbol, but make no changes.
# What is a writer method?
# 	A statement that gives you the access to change the symbol, but not call it.
# What do the attr methods do for you?
# 	What I said above. Adding on it, it allows you to save lines of code that you would use creating a method to define a variable, as well as creating a metod to change that variable.
# Should you always use an accessor to cover your bases? Why or why not?
# 	No. attr_accessor is powerful, and you do not always need to give permission to change the value of the symbol. You should give whatever permissions are required, in order to stop unexpected issues from popping up.
# What is confusing to you about these methods?
# 	I think I will need to mess around with or see examples of how reader and writer interact with different methods. I can see how they could get confusing in more advanced code.








