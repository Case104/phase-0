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
puts "Hmmm, that is a little small. What do you think of "+betNum+"?"v