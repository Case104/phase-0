# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {:inner => {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash{:outer => {:inner => {3 => "congrats"}}}
# p hash[:outer][:inner]["almost"][3]

# nested_hash = {:outer_key => {:inner_key => "Winner!"}}
# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

# p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

# # number_array.map! { |num| num += 5} 

# # p number_array


number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| p inner + 5}
  else
    p element + 5
  end
end

# Bonus:

# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


# startup_names.map! do |element|
#   if element.kind_of?(Array)
#     element.map! {|inner| p inner + "ly"}
#     if inner.kind_of?(Array)
#       inner.map! {|x| p x + "ly"}
#       p x + "ly"
#     else p x + "ly"
#     end
#   else
#     p element + "ly"
#   end
# end

# REFLECTION: 
# What are some general rules you can apply to nested arrays?
# 	They can be confusing to access, so try to use them sparingly. I found it easier to access something within an array nested within an array, rather than arrays and hashes intermixed.
# What are some ways you can iterate over nested arrays?
# 	We used both map and each to iterate over.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# 	we used map and .each. I feel like I don't have a firm understanding of the differences between them, but I have used map often at this point.

