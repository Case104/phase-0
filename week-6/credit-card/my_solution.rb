# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Prince.
# I spent [1.35] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
=begin
1. Break argument into an array
2. Check if array is 16 digits, if not raise an error
3. Create variables even_sum and odd_sum
4. Set even_sum to equal doubled even index
5. Set odd_sum to equal sum of odd index
6. If (even_sum + odd_sum) % 10 == 0, return TRUE else return FALSE
=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(number)
#     @number = number.to_s.split("")
#     raise ArgumentError.new("Need 16 digit number") if @number.length != 16
#   end
  
#   def sum
#     @even_sum = @number.select.each_with_index { |_, i| i.even? }
#     @odd_sum = @number.select.each_with_index { |_, i| i.odd? }
    
#     @doubled = @even_sum.map { |i| i.to_i * 2 }
#     @odd_sum.map! { |i| i.to_i }
#     @odd_string = @odd_sum.join
#     @doubled_string = @doubled.join
#     @all_string = @doubled_string + @odd_string
#     @all_array = @all_string.split("")
#     @sum = 0
#     @all_array.map! { |i| i.to_i }
#     @all_array.each{ |i| @sum += i}
#   end
  
#   def check
#     if @sum % 10 == 0
#       return true
#     else 
#       return false
#     end
#   end
# end

# test = CreditCard.new(4563960122001999)
# test.sum
# test.check


# Refactored Solution

class CreditCard
  def initialize(number)
    @number = number.to_s.split("")
    raise ArgumentError.new("Need 16 digit number") if @number.length != 16
  end
  
  def sum
    @evens = @number.select.each_with_index { |_, i| i.even? }
    @odds = @number.select.each_with_index { |_, i| i.odd? }
    @doubled_evens = @evens.map { |i| i.to_i * 2 }
    @odds.map! { |i| i.to_i }
    @total = @doubled_evens.join + @odds.join
    @total_array = @total.split("")
    @total_array.map! { |i| i.to_i }
    sum = @total_array.inject { |sum, i| sum + i }
  end
  
  def check_card
    if sum % 10 == 0
      return true
    else 
      return false
    end
  end
end

# test = CreditCard.new(4563960122001999)
# p test.sum
# p test.check_card





# Reflection

# What was the most difficult part of this challenge for you and your pair?
#   At first, we had too many methods, and went a few steps further than we had to to solve it.
# What new methods did you find to help you when you refactored?
#   When we refactored, we added .inject to add our totals. I understand what .select.each_with_index does, but I don't understand how it does it.
# What concepts or learnings were you able to solidify in this challenge?
#   I loved this challenge. I had a great pair and we knocked it out quickly and efficiently. I felt like I really understood how split, join, and inject work. I don't see the difference between map and each yet.


