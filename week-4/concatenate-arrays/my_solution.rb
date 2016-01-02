# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  array_2.each do |arr|
  	array_1.push(arr)
  	end
  array_1
end