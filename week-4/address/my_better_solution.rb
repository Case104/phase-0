# Format an Address

# I worked on this challenge by myself.


# Your Solution Below

def make_address(street, city, state, zip)
	puts "You live at "+street+", in the beautiful city of "+city.capitalize+", "+state.capitalize+". Your zip is "+zip.to_s+"."
end

make_address("O Street", "omaha", "nebraska", 68127)