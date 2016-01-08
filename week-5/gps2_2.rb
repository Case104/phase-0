# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: Crete a hash 
#fill hash with string data 
  # split string on spaces into an array
# Iterate over array and assign each item as key to hash with value 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list and item to add
# steps: ask user input and assign to hash
# output: nothing

# Method to remove an item from the list
# input: list and item to remove
# steps: remove from list
# output: nothing

# Method to update the quantity of an item
# input: list and item
# steps: access hash and modify value
# output: nothing

# Method to print a list and make it look pretty
# input: list
# steps: print 
# output: list

def create(items)
  item_container = Hash.new()
  array = items.split(" ")
  array.each {|item| item_container[item] = 1 }
  item_container
end

def add(list, item)
  if list[item]
    list[item] += 1
  else
    list[item] = 1 
  end
end

def update(list, item, quantity)
  list[item] += quantity
end

def print(list)
  list.each { |item, quantity| puts "Item: #{item}, Quantity: #{quantity}"}
end

my_list = create("Apples Oranges Bananas")
p my_list
add(my_list, "Apples")
p my_list
add(my_list, "Chocolte")
p my_list
update(my_list, "Oranges", 3)
p my_list
print(my_list)

=begin
What did you learn about pseudocode from working on this challenge?
  I learned that you should include what data needs to be input, and what will be the expected resolution, to each step.
What are the tradeoffs of using Arrays and Hashes for this challenge?
  When things are associative yet different, I like to use hashes. Arrays are great for the specific methods you can run on them, or
  if the order is important. 
What does a method return?
  A method does not implicitly return anything.
What kind of things can you pass into methods as arguments?
  Variables, strings, booleans, integers, floats
How can you pass information between methods?
  By assigning the information to a variable and calling that variable with the method
What concepts were solidified in this challenge, and what concepts are still confusing?
  I just realized that I don't know what a method returns. I'm hoping that the answer was a trick question. 
  Hashes vs arrays,and when to use each, were better defined for me.
=end