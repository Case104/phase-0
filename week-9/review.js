// def valid_triangle?(a, b, c)
// 	triangle = [a, b, c]
//  	allSides = a + b + c
//  	biggest = triangle[0]
//  	triangle.each do |side|
//   	if side > biggest
//   		biggest = side
//   	end
//  	end
//  	if allSides - biggest > biggest
// 		return true
// 	else
// 		return false
// 	end
// end

function validTriangle(a, b, c ) {
	var triangle = [a, b, c]
	var allSides = a + b + c
	var biggest = triangle[0]
	for ( side in triangle ) {
		if (side > biggest) {
			biggest = side
		}
	}
	allSides - biggest > biggest ? true : false
}

// validTriangle(3, 6, 9);



// def leap_year?(year)
// 	((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) ? true : false
// end

function leapYear(year) {
	((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) ? true : false
}

// leapYear(1992);

// For some reason I thought this second one would be harder to translate over at first glance.

// def separate_comma(integer)
// 	string_array = integer.to_s.split(//)
// 	div3 = string_array.length / 3
// 	number_of_commas = 1
// 	if string_array.length % 3 == 0
// 		counter = 1
// 	else
// 		counter = 0
// 	end
// 	until counter == div3
// 		comma_placement = (-4 * number_of_commas)
// 		string_array.insert(comma_placement, ",")
// 		number_of_commas += 1
// 		counter += 1
// 	end
// 	return string_array.join
// end

// function separateComma(integer) {
// 	var stringArray = integer.toString().split('');
// 	var div3 = stringArray.length / 3;
// 	var numberOfCommas = 1;
// 	var counter = 1;
// 	var i = -3;
// 	while ( counter < div3 ) {
// 		var placement = ( i * numberOfCommas);
// 		stringArray.splice(placement, 0, ',');
// 		numberOfCommas += 1;
// 		counter += 1;
// 		console.log(i);
// 		if ( i > -4) { i = -4; }
// 	}
// 	return stringArray.join('');
// }

function separateComma(integer) {
	var stringArray = integer.toString().split('');
	var index = -3;
	while ( stringArray.length + index > 0 ) {
		stringArray.splice(index, 0, ',');
		index -= 4;
	}
	return stringArray.join('');
}

console.log(separateComma(1000));



// What concepts did you solidify in working on this challenge? 
// 	In these 3 cases, how similar ruby and javascript can be. These were fairly easy to port over.
// What was the most difficult part of this challenge?
// 	I looked up the methods for syntax purposes, but otherwise seemed pretty fine.
// Did you solve the problem in a new way this time?
// I did for the third one. I realized how convoluted my original logic was, and rewrote it.
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// 	It varied only slightly so I used the same general logic and methods as I used in ruby.


