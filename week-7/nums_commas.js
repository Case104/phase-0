// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with by myself.

// Pseudocode

// create a function named SEPARATECOMMA
// Takes INTEGER as argument
// turn INTEGER into STRING
// IF STRING.length > 4
	// RETURN STRING
// ELSE 
	// split string into array
	// reverse it
	// Counter loop
		// add comma at 3, and every 3 after
	// reverse it
	// join it


// Initial Solution

// function separateComma(integer) {
// 	var string = integer.toString();
// 	if (string.length < 4 ) { return string; }
// 	else {
// 		array = string.split('').reverse();
// 		for (counter = 3; counter < array.length; counter += 4) { array.splice(counter, 0, ","); }
// 		array = array.reverse().join('');
// 		return array
// 	}
// }
// separateComma(1000000000000);

// Refactored Solution

function separateComma(integer) {
	var string = integer.toString();
	if (string.length < 4 ) { return string; }
	else {
		array = string.split('').reverse();
		for (counter = 3; counter < array.length; counter += 4) { array.splice(counter, 0, ","); }
		array = array.reverse().join('');
		return array
	}
}

// I kind of refactored as I went. I also feel like the variables are correctly named. Not sure what I can change here to make it more elegant.

// Your Own Tests (OPTIONAL)




// Reflection


// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// 	I approached it like it was a new problem. Because of previous study, I already knew about the methods I used here, so this challenge was simple for me. I had to rethink my logic, originally I was going to use modulo to solve, but instead decided to just put one in every 4.
// What did you learn about iterating over arrays in JavaScript?
// 	That it works as you would expect. A for loop is basically an each from ruby, but with parameters.
// What was different about solving this problem in JavaScript?
// 	You have to turn it into an array in order to reverse it.
// What built-in methods did you find to incorporate in your refactored solution?
// 	I used splice, split, reverse, join, length, and toString. 






