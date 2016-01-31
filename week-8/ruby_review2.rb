# Reverse Words


# I worked on this challenge by myself
# This challenge took me [#] hours.

# Pseudocode

# Take a sentence and reverse each word within the sentence

# 1. Break sentence into an array of words. 
# 2. Reverse words. 
# 3. Join sentence. 
# 4. Profit.


# Initial Solution

def reverse_words(sentence)
	words = sentence.split(' ')
	words.each do |word|
		word.reverse!
	end
	reversed_sentence = words.join(" ")
end

# Reflection

# What concepts did you review or learn in this challenge?
# 	This challenge was a good refresher on split and join.

# What is still confusing to you about Ruby?
# 	I tried to do the Fibonacci sequence identifier before this and failed miserably. 
		
# What are you going to study to get more prepared for Phase 1?
# 	Everything? I feel like every time I return to something that I have learned before, I need to relearn it. My retention is troubling.