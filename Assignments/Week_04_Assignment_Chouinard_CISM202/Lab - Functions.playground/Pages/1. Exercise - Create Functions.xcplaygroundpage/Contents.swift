/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */


//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation

func magicEightBall(num: Int) {
  let randomNum = Int.random(in: 1...num);
  var output: String;
  switch randomNum {
  case 1:
    output = "one";
    break;
  case 2:
    output = "two";
    break;
  case 3:
    output = "three";
    break;
  case 4:
    output = "four";
    break;
  case 5:
    output = "five";
    break;
  default:
    output = "Not 1 - 5";
  }

  print(num, "-", output, "-", randomNum)
}

for n in 1...15 {
  magicEightBall(num: n);
}

/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
