
 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Two robots are fighting battle bots style. Choose your action, and see your results. First one to KO the other wins!
// Overall mission: Player vs computer. Comp randomly selects from 3 actions. Player chooses action. If statements trigger HP changes. Start at 5, first one to get opponent to 0 wins.

// Goals: KO opponent hp = 0
// Characters: Blue-Bot(Player) / Red-Bot(Computer)
// Objects: Blue-Bot / RedBot
// Functions: Sweep, Jab, Haymaker

// Pseudocode
// Create two objects with 3 functions, jab, sweep, haymaker. As well as variables HP and choice
// prompt player to choose
// switch statement to compare choices 
// random selection for comp
// console.log when hp = 0 (win / lose)
// play again resets hp to 5
// jab > haymaker
// sweep > jab
// haymaker > sweep

// Initial Code

// while ( player.hp > 0 || comp.hp > 0 ) {

  // var player = 5
  // var comp = 5

  // function randomNum() { return Math.floor(Math.random() * 3) };

  // var compChoice = randomNum();
  // var playerChoice = prompt("Blue-Bot awaits orders! Sweep, jab, or haymaker?");


  // switch (playerChoice) {
  //   case "jab":
  //     if (compChoice == 0) {
  //       console.log("You both jabbed! No hits!");
  //     }
  //     else if (compChoice == 1) {
  //       console.log("Nice shot! You dodged that haymaker with a quick jab.");
  //       comp -= 1;
  //     }
  //     else if (compChoice == 2) {
  //       console.log("Ouch, you're going to feel that sweep in the morning!");
  //       player -= 1;
  //     }
  //   break;
  //   case "sweep":
  //     if (compChoice == 0) {
  //       console.log("He jabbed! Good thing you swept the leg!");
  //       comp -= 1;
  //     }
  //     else if (compChoice == 1) {
  //       console.log("Ooof, I'm surprised you're still standing after that haymaker.");
  //       player -= 1;
  //     }
  //     else if (compChoice == 2) {
  //       console.log("You both swept, that looked kinda funny.");
  //     }
  //   break;
  //   case "haymaker":
  //       if (compChoice == 0) {
  //         console.log("Stopped short by a jab! Maybe next time.");
  //         player -= 1;
  //       }
  //       else if (compChoice == 1) {
  //         console.log("Both of your haymakers fell short!");
  //       }
  //       else if (compChoice == 2) {
  //         console.log("He fell for the haymaker! Thats gotta hurt");
  //         comp -= 1;
  //       }
  //   break;
  //   default: 
  //     console.log("Blue-Bot only know how to jab, sweep, or haymaker.");
  // };
// };


// Refactored Code

var player = 5;
var comp = 5;
while ( player > 0 && comp > 0 ) {

  function randomNum() { return Math.floor(Math.random() * 3) };
  var compChoice = randomNum();
  
  var playerChoice = prompt("Blue-Bot awaits orders! Sweep, jab, or haymaker?");

  switch (playerChoice) {
    case "jab":
      if (compChoice == 0) {
        console.log("You both jabbed! No hits!");
      }
      else if (compChoice == 1) {
        console.log("Nice shot! You dodged that haymaker with a quick jab.");
        comp -= 1;
      }
      else if (compChoice == 2) {
        console.log("Ouch, you're going to feel that sweep in the morning!");
        player -= 1;
      }
    break;
    case "sweep":
      if (compChoice == 0) {
        console.log("He jabbed! Good thing you swept the leg!");
        comp -= 1;
      }
      else if (compChoice == 1) {
        console.log("Ooof, I'm surprised you're still standing after that haymaker.");
        player -= 1;
      }
      else if (compChoice == 2) {
        console.log("You both swept, that looked kinda funny.");
      }
    break;
    case "haymaker":
        if (compChoice == 0) {
          console.log("Stopped short by a jab! Maybe next time.");
          player -= 1;
        }
        else if (compChoice == 1) {
          console.log("Both of your haymakers fell short!");
        }
        else if (compChoice == 2) {
          console.log("He fell for the haymaker! Thats gotta hurt");
          comp -= 1;
        }
    break;
    default: 
      console.log("Blue-Bot only know how to jab, sweep, or haymaker.");
  };
  if (player == 0) {
  	console.log("Blue-Bot bites the dust.")
    var answer = prompt("Would you like to try again?");
    if (answer == "yes") {
    player = 5;
    comp = 5;
    }
  }
  else if (comp == 0) {
  console.log("Red-Bot has fallen! Congratulations on your victory!")
  }
};






// Reflection

// What was the most difficult part of this challenge?
	// Syntax errors were driving me insane. 
// What did you learn about creating objects and functions that interact with one another?
	// When I first designed this and started working on it, I had created a function that would create a bot with the properties including its total alloted "hits" (hp), as well as functions that would maniuplate that data. As I went on, swimming in syntax errors, I realized that I could do the same thing with if / else and case statements. I ended up doing it that way.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
	// I learned about math.random and math.floor. 
// How can you access and manipulate properties of objects?
	// A couple different ways. I usually do object.property