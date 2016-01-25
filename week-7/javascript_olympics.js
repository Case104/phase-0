// JavaScript Olympics

// I paired with Carl on this challenge.

// This challenge took me [1.25 hours.

//  create object that contains name and event 
//  add win to the object


// Warm Up

var athletes = [
  {
    name: "Sarah",
    event: "Ladies' Singles"
  },
  {
    name: "Lance", 
    event: "Tour de France"
  }
];

function won (array) {
  for ( var i = 0; i < array.length; i++) {
    array[i].win = array[i].name + " won the " + array[i].event + "!";
  }
  return array
};

// console.log(won(athletes));

// Bulk Up

// Jumble your words
// Take a string as input;
// Split the string 

var reverseMe = "string"

function jumble (string){
  var array = string.split("").reverse().join("");
  return array
};


console.log(jumble(reverseMe));


// 2,4,6,8

// take an array of numbers
// def evens array
// iterate through, IF i % 2 = 0 push to evens
// return evens


var driver = [1, 2, 3, 4, 5, 6];
var evensArray =[];

function evens(array) {
  for (var i = 0; i < array.length; i++) {
    if ( array[i] % 2 === 0) {
      evensArray.push(array[i]);
    }
  }
  return evensArray;
}

console.log(evens(driver))

// "We built this city"
function Athlete (name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// What JavaScript knowledge did you solidify in this challenge?
//   I don't think i'll mess up variables anymore! "var" got me more times than I care to admit.
// What are constructor functions?
//   Functions that operate on a global scope.
// How are constructors different from Ruby classes (in your research)?
//   The only thing i've run into so far was that they can be accessed differently. 

