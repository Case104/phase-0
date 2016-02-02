// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// Logic

// Create a variable for each person

// function
// for person in votes
  // var person = {}

// for each person in votes,
//   IF voteCount.person > 0 (or exists)
//     add 1 to votecount.person.votes
//   ELSE
//     add person to voteCount with 1 vote

 // two for loops
 // instead of creating new variable, edit ones in place.
 // add them to voteCount

// __________________________________________
// Initial Solution

// function assignVoters() {
//   for ( person in votes ) {
//     var person = {
//       person.president = 0;
//       person.vicePresident = 0;
//       person.secretary = 0;
//       person.treasurer = 0;
//     }
//   }
// }
// assignVoters(votes);

// console.log(bob.president);

for ( var person in votes) {
  for ( var officer in votes[person]){
    var totalVotes = [votes[person][officer]]
    voteCount[officer][totalVotes] = voteCount[officer][totalVotes] || 0
    // IF it exists then it will stay the same, if not, then it will become 0
    voteCount[officer][totalVotes] += 1
    // 0 becomes 1 for 1 vote, otherwise vote is added
  }
};

var winners = {}

for ( var officer in voteCount) {
  for ( var person in voteCount[officer]) {
    var total = voteCount[officer][person]
    winners[officer] = winners[officer] || total
    officers[officer] = officers[officer] || person
    if ( winners[officer] < total) {
      winners[officers] = total;
      officers[officer] = person;
    }
  }
};

// console.log(officers);
// __________________________________________
// Refactored Solution

for ( var person in votes) {
  for ( var officer in votes[person]){
    var totalVotes = [votes[person][officer]]
    voteCount[officer][totalVotes] = voteCount[officer][totalVotes] || 0
    voteCount[officer][totalVotes] += 1
  }
};

var winners = {}

for ( var officer in voteCount) {
  for ( var person in voteCount[officer]) {
    var total = voteCount[officer][person]
    winners[officer] = winners[officer] || total
    officers[officer] = officers[officer] || person
    if ( winners[officer] < total) {
      winners[officers] = total;
      officers[officer] = person;
    }
  }
};




// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//     I learned about redundancy! I am familiar with ternary operators, but couldn't find a away to use them that wasn't a complete mess, so I did some research. Without this, I don't knw if I would have completed the challenge.
// Were you able to find useful methods to help you with this?
//   See above. I didn't use anything else besides simple for loops. I referenced manipulating_objects.js to refresh myself on accessing and creating nested objects.
// What concepts were solidified in the process of working through this challenge?
//   Nested objects, forgetting var.... again and again., and other syntax issues. I miss ruby.





// __________________________________________
// // Test Code:  Do not alter code below this line.


// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (voteCount.president["Bob"] === 3),
//   "Bob should receive three votes for President.",
//   "1. "
// )

// assert(
//   (voteCount.vicePresident["Bob"] === 2),
//   "Bob should receive two votes for Vice President.",
//   "2. "
// )

// assert(
//   (voteCount.secretary["Bob"] === 2),
//   "Bob should receive two votes for Secretary.",
//   "3. "
// )

// assert(
//   (voteCount.treasurer["Bob"] === 4),
//   "Bob should receive four votes for Treasurer.",
//   "4. "
// )

// assert(
//   (officers.president === "Louise"),
//   "Louise should be elected President.",
//   "5. "
// )

// assert(
//   (officers.vicePresident === "Hermann"),
//   "Hermann should be elected Vice President.",
//   "6. "
// )

// assert(
//   (officers.secretary === "Fred"),
//   "Fred should be elected Secretary.",
//   "7. "
// )

// assert(
//   (officers.treasurer === "Ivy"),
//   "Ivy should be elected Treasurer.",
//   "8. "
// )