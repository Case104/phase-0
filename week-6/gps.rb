# Your Names
# 1) Jonathan Case
# 2) NO PARTNER

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("We can only make a cake, cookie, or pie.") if library.has_key?(item_to_make) == false

  serving_size = library[item_to_make]
  items_made = num_of_ingredients / serving_size
  remaining_ingredients = num_of_ingredients % serving_size
  cakes = 0
  cookies = 0
  
  until remaining_ingredients == 0
    if remaining_ingredients >= 6
      remaining_ingredients -= 5
      cakes += 1
    else 
      remaining_ingredients -= 1
      cookies += 1
    end
  end
  if item_to_make == "cookie"
    return "Make #{items_made + cookies} cookies."
  elsif item_to_make == "cake"
    return "Make #{items_made + cakes} cakes and #{cookies} cookies."
  elsif item_to_make == "pie"
    return "Make #{items_made} pies, #{cakes} cakes, and #{cookies} cookies."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
  # The original code wasn't the most user friendly, so it took a bit to figure out how it accomplished what it did.
# Did you learn any new methods? What did you learn about them?
  # I learned the .has_key? method. It simply checks if the hash contains the key or not.
# What did you learn about accessing data in hashes? 
  #  I learned that when you call the key, you get the value.
# What concepts were solidified when working through this challenge?
  # That I need to learn methods. I am learning the logic about how things work, but my code always looks rudimendtary. 
