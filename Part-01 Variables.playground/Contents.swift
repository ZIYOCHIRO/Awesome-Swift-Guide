import UIKit

// --------- VARIABLES ---------

// Integers
var myInt: Int = 10
var score: Int = 20 // or
var score_1 = 20

score      // use
score = 30 // change
score += 1 // modify
score -= 2
score *= 2
score /= 5

// Doubles : give more specific answer
var myDoubles: Double = 10.2
myDoubles += 1.1
myDoubles -= 3.2
myDoubles *= 2

// String
var myString: String = "Hello"
var playersName: String = "Isla"
var greetPlayer: String = "\(myString), \(playersName)!"

// Bools
var myBools: Bool = true

// Tuples
var myTuple:(Int, Int) = (10, 6)
var myPoint:(x: Int, y:Int) = (55, 78)
myPoint.y

// var VS. let
var myVarInt: Int = 10
let myLetInt: Int = 15

myVarInt += 1
//  myLetInt += 1  error!!! can't change the value

// type conversion
var theInt: Int = 10
var theDouble: Double = 5.2
theInt + Int(theDouble)
Double(theInt) + theDouble









