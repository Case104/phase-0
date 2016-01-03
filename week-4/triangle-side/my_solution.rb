# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
	triangle = [a, b, c]
 	allSides = a + b + c
 	biggest = triangle[0]
 	triangle.each do |side|
  	if side > biggest
  		biggest = side
  	end
 	end
 	if allSides - biggest > biggest
		return true
	else
		return false
	end
end

#triangle formula c – b < a < c + b