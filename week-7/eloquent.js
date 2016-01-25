// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

myNumber = 4
myNumber += 1



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// triangele 

var hashtag = "#";
var counter = 1;
while (counter > 8) {
  console.log(hashtag);
  hashtag += "#";
  counter++;
}

// fizz buzz 

for (var counter = 1; counter > 100; counter++) {
  if ( counter % 3 == 0 && counter % 5 == 0) {
    console.log("FizzBuzz");
  }
  else if (counter % 3 == 0) {
    console.log("Fizz")
  }
  else if (counter % 5 == 0) {
    console.log("Buzz");
  }
  else {
    console.log(counter);
  }


// Functions

// Complete the `minimum` exercise.


function min(a, b) {
	if (a > b) {
		console.log(b);
	}
	else if (a < b) {
		console.log(a);
	}
	else {
		console.log("They are equal");
	}
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me {
	name: "Jonathan",
	age: 25,
	foods: [ "Lobster", "Whittney's Fried Chicken", "Ribeye Steak"]
	quirk: "I get extremely passionate(obsessed) about whatever hobby or interest I pick up."
};

// Reflection questions: 

// Did you learn anything new about JavaScript or programming in general?
	// I learned about the history of JavaScript. I have read most of Eloquent JavaScript before, so this was a good review.
// Are there any concepts you feel uncomfortable with?
	// So far so good.

// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
	// Their use of logical operators and mathematical operators is the same. JavaScripts' use of automatic type conversion is unique. Also, JS uses console.log() in order to print to the console whereas ruby uses p, puts, or print.

// What is an expression?
	// A fragment of code that produces an expression.
// What is the purpose of semicolons in JavaScript? Are they always required?
	// It serves as a break. They are not always required, but when it doubt use one.
// What causes a variable to return undefined?
	// If the variable doesn't have a value.
// Write your own variable and do something to it in the eloquent.js file.
	// Done.
// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
	// console.log is an expression that retrieves he log property from the value held by the console variable. It is similar to the p, puts, and print ruby methods. 
// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
// Describe while and for loops
	// While loops set the flow by telling the program to iterate until a condition is met. Often it will use a "counter" that gets incremented within the method. For loops are similar kind of a condensed version of while loops.
// What other similarities or differences between Ruby and JavaScript did you notice in this section?
	// The way loops work, switch statements, ect, is very similar. Most differences at this stage feel more like syntax. Javascript is uglier, in that ruby is easier to read as a language.
// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
	// Done

// What are the differences between local and global variables in JavaScript?
	// Global variables are variables that are defined outside of a method or function. They are powerful and should be used sparingly. Local variables exist only within their object. 
// When should you use functions?
	// Functions are repeatable, so if you have an effect that you will need a second time, declaring it as a function saves you from repeating yourself.
// What is a function declaration?
	// A function declaration is what you do when you call a functon. you write the name of the function followed by any arguments it takes.
// Complete the minimum exercise in the eloquent.js file.
	// Done.

// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
	// Using the . you must be directly calling a variable name. the brackets denote that you want to evaluate it and then pull the data.
// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
	// Done.
// What is a JavaScript object with a name and value property similar to in Ruby?
	// Hash.

