import UIKit

// create custom types

// :(    x and y are not linked together
var player1_xPosition: Int = 10
var player1_yPosition: Int = 5

var player2_xPosition: Int = 1
var player2_yPosition: Int = 2

// using tuple to link them together but still not very good
var player1_Position: (Int, Int) = (10, 5)
var player2_Position: (Int, Int, Int) = (1, 2, 3) // accidently add 1 more int


// Best solution!!  :D
struct positionOnMap {
    var x: Int  // have an already built in initializer
    var y: Int
    
    func printPlayerPosition() {
        print("the positon is \(self.x) \(self.y)")
    }
}

//var player1Position: positionOnMap = positionOnMap(x: <#T##Int#>, y: <#T##Int#>)
var player1Position: positionOnMap = positionOnMap(x: 10, y: 5)
var player2Position: positionOnMap = positionOnMap(x: 1, y: 2)
player1Position.x
player1Position.y
// change value
player1Position.x = 100
player1Position.x
// call the structure's func
player1Position.printPlayerPosition()





